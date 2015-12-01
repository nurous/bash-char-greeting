Bash script to print an ASCII art character with a greeting.

Usage.

`./bash_fn` includes a function `greeting` that will print the greeting.

`./greet` sources `./bash_fn` and immediately calls `greeting` so you have a choice;

1. Import the script `./bash_fn` in your ``~/.bash_profile` and then call `greeting`

OR

2. Just import the script `./greet` in your `~/.bash_profile`

Either way the function `greeting` will then be available in that shell from then on.
