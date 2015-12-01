Bash script to print an ASCII art character with a greeting.

Usage
-----

`./bash_fn` includes a function `greeting` that will print the greeting.

`./greet` sources `./bash_fn` and immediately calls `greeting` so you have a choice;


* Import the script `./bash_fn` in your `~/.bash_profile` and then call `greeting`

OR

* Just import the script `./greet` in your `~/.bash_profile`


Either way opening a new terminal will run the function `greeting` to print output like below. It will then be available to be run whenever you want in that shell.



### ~/.bash_profile
```bash
...

source ~/bash-char-greeting/bash_fn
greeting

```


Example Output
--------------
```

      /'.       .--.
      |  '.   .'-,  |
      \    \_/    \_/
       '._.' '._.'
         / . . \
        |=  Y  =|
        \_  ^  _/
          )'-'(
        /`     `\
       | |     | |
       \ \     / /
      {|\_)   (_/|
       /\   '   /\
      |  '.___.'  |
       \  \   /  /
        \  \ /  /
        /  / \  \
       (,,/   \,,)

Regina the Roman Rabbit says "Salvëte, Roxie Isabelle!" :)

$ greeting


                   __              __
                   \ `-._......_.-` /
                    `.  '.    .'  .'
                     //  _`\/`_  \\
                    ||  /\O||O/\  ||
                    |\  \_/||\_/  /|
                    \ '.   \/   .' /
                    / ^ `'~  ~'`   \
                   /  _-^_~ -^_ ~-  |
                   | / ^_ -^_- ~_^\ |
                   | |~_ ^- _-^_ -| |
                   | \  ^-~_ ~-_^ / |
                   \_/;-.,____,.-;\_/
            ==========(_(_(==)_)_)=========

Oliver the Oman Owl says "As-salám aláykum, Roxie Isabelle!" :)

$
```
