## How to do Autocompletion in Linux
Create a function that contains a script that you want to have autocompletion.<br>
Create the autocompletion script.<br>
do the commands: <br>
`source <script>` <br>
`source <autocompletion-script>` <br>
`complete -F auto_completion_function_name function_name` <br>

Or If you want to do it automatically load the function with `source` in `.bashrc` <br>
and then in the autocompletion script, after the autocompletion function do <br>
```
_function() {
...
} && compete -F _function function
```

You can put the function in `/etc/bash_completion.d/` and it will be loaded when the shell starts. <br>
<hr>

## Explanation on how to write the autocompetion file
In the autocompletion I used a generalized command so it will caputre all future subcommands that I will add. Whenever I add subcommand and restart the shell, it will capture the subcommand that I added.<br>
The variable `$completion_str` should contain list of words that will be the completion option for the command. <br>
In the first case when I do completion for the script itself, I take all the strings that are after argv1 - all the first options<br>
In all other options - I do some text manipulation that will give all the options between the condition that I want autocompletion for, and the next one<br>
Like:<br>
```
goto)
			local completion_str=$(sed -n '/if.*argv1.*goto/,/if.*argv1.*edit/ p' $poi_path  | grep argv2 | grep -v "sed" | awk -F'[\"]' '{print $2}')
			COMPREPLY=($(compgen -W "${completion_str}" -- "$cur"))
			return
```
I take all the lines between the condition that checks if the first argument is `goto` (what I do completion for) and `edit` (which is the next one). Then I take all the second arguments `argv2`, remove the line that contins sed, which is the line that I do the command on, and pick the word between the quote marks.<br>
That way I take all the second arguments between goto and the next argument. Which Means, again, if I add subcommand, in next start of this completion script, it will read the new completion too.<br>
So I will do sed between the condition that I want to autocomplete and the next condition.<br>
In other cases


