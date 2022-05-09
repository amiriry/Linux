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
