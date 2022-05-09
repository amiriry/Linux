## How to do Autocompletion in Linux
Create a function that contains a script that you want to have autocompletion.
Create the autocompletion script.
do the commands:
`source <script>`
`source <autocompletion-script>`
`complete -F auto_completion_function_name function_name`

Or If you want to do it automatically load the function with `source` in `.bashrc` 
and then in the autocompletion script, after the autocompletion function do 
```
_function() {
...
} && compete -F _function function
```

You can put the function in `/etc/bash_completion.d/` and it will be loaded when the shell starts.
