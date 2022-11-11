---
blog:
  author: Gabriel Braico Dornas
  image: https://imgur.com/sc0tBl6.png
---

# Use terminal to search the web

The function sample provided here will use [google-chrome CLI](https://github.com/prasmussen/chrome-cli) and we’re assuming that you are using bash as your shell (if you're using zsh you could use the `zshrc` file).
Head to the terminal and open `.bash_profile` (for this walkthrough we’ll use nano to accomplish this task since it’s simple):

```
nano ~/.bash_profile
```

Copy and paste the following syntax at the end of your bash_profile on a new line:

```
function chrome() { google-chrome "? $*" ; }
```

Now hit Control+X and save the changes.
Now you can initiate a Google search through Chrome directly from the command line, all you need to do is type “chrome [phrase]” and a new google search will launch in the Chrome browser. 
For example, to search google for “braicode” you would just type the following:

```
chrome braicode
```

![image_braicode_search](https://imgur.com/bE91UhL.png)

For phrases with multiple search terms just type all without space:

```
chrome github gabrielbdornas
```

![image_gabrielbdornas_github_search](https://imgur.com/bul2ko7.png)

Each new search of Google will summon a new Chrome browser window.

# BONUS TIP - Access a specific GitHub repo using the terminal

I use [GitHub](https://github.com/) wheter for repos in my account or another organizations.
To automate this I used the same principle and created a `github` function:

```
function github() { google-chrome https://github.com/$1/$2 ; }
```

Now open an repo using:

```
github gabrielbdornas python-project-template
```

![image_github_function](https://imgur.com/FNkQdUD.png)

Moving away from queries, one could also use a variation of this trick to open your favorite website directly from the command line.

# References
