
# Development Setup Tutorial

This learning module installs development tools for novice script writers to seasoned engineers. For heftier projects, use an integrated development environment with a debugger, but most Python/Data Science/Machine Learning projects benefit from this type of development environment.

While these tutorials are designed for MacOS, there should be little difficulty in migrating to a Linux OS. Just skip steps 1/2, and use `sudo apt-get install` in place of `brew install`.

Google will always be your friend.

## Table of Contents
1. Terminal
2. Package Management
3. Shell
4. Text Editor - atom
5. Jupyter Notebook
6. Git
7. Terminal Multiplexer
8. Text Editor
9. Conclusion

## 1. Terminal - ITERM2
* What is a terminal? How does one use it?
  * a terminal has a command line interface that interprets text commands. Users interface with a terminal to run commands in an efficient manner. These commands can alter your system files, run programs, download packages, and more. It is often more efficient to use a terminal than a graphical user interface.
* What is iterm2?
  * iterm2 is a replacement for the default terminal installed on MacOS. It includes [features](https://iterm2.com/features.html) that are helpful to the modern developer.
* Download [here](https://www.iterm2.com/downloads.html)

## 2. Package Management - HOMEBREW
* How does one install packages using a terminal? What manages the packages/libraries/programs that I want on my system?
>[Homebrew](https://brew.sh/) is a free and open-source software package management system that simplifies the installation of software on Apple's macOS operating system and Linux. The name is intended to suggest the idea of building software on the Mac depending on the user's taste.
* To install homebrew, open Iterm2, copy and paste the command below, and press enter:
  * `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

## 3. Shell - ZSHELL
### 3a. Download Zsh
* What is a [shell](https://en.wikipedia.org/wiki/Shell_(computing)?oldformat=true)?
  * a user interface for the Operating System's processes
  * shells use a command line interface (CLI) or graphical user interface (GUI)
* Bash is a Unix shell and command language. MacOS uses bash by default
  >Bash is a command processor that typically runs in a text window where the user types commands that cause actions. Bash can also read and execute commands from a file, called a shell script. Like all Unix shells, it supports filename globbing (wildcard matching), piping, here documents, command substitution, variables, and control structures for condition-testing and iteration. The keywords, syntax, dynamically scoped variables and other basic features of the language are all copied from sh. - [Wikipedia](https://en.wikipedia.org/wiki/Bash_(Unix_shell)?oldformat=true)
* Zshell has features that make it apt for the modern developer. It's features are listed [here](https://www.howtogeek.com/362409/what-is-zsh-and-why-should-you-use-it-instead-of-bash/)
* Install:
  * `brew install zsh`

### 3b. Download Oh-My-Zsh
* [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh) extends the functionality of Zshell by extending the shell and making it compatible with external libraries.
* Install:
  * `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### 3c. Configure Zsh
Most shells - by default - search for a configuration file in your home directory that ends with suffix `rc`. `rc` stands for [run commands](http://www.catb.org/jargon/html/R/rc-file.html). For instance:
* BASH > .bashrc
* ZSH > .zshrc
* VIM > .vimrc

So you'll need to create a file named .zshrc in your home directory in order to provide a script for your shell to run upon startup. However, in order to do so we need to know how to create a file, navigate your system, manipulate files/directories(folders), and execute commands all by using your CLI.

That can take us down a long tangent that we'll get into later. For now, run the command:
* `curl https://raw.githubusercontent.com/benjaminykim/python_data_science_tutorial/master/resources/.zshrc -o .zshrc -s`

To verify that it works, quit your Zshell process entirely `CMD + q` and restart it. Then run the command `ll`. You should see something cool.

## 4. Text Editor - ATOM
If you already have a text editor, skip.<br>
Else, Atom is a very straightforward text editor. Install [here](https://atom.io/).

## 5. Python Web Interpreter - JUPYTER NOTEBOOK
### 5a. Anaconda
Jupyter Notebook is a data science tool for creating interactive, visual code stories. It is used for data visualization, code sharing, education, and data science purposes. The best long term way to use Jupyter Notebook is through the package manager and data science platform [Anaconda](https://www.anaconda.com/why-anaconda/). There is extensive utility in using Conda, and I recommend it if one's primary use for programming is for data science -especially more so if Python or R are the only languages necessary to the user. Conda handles library installation and version control. This allows users to quickly switch in between different versions of donwloaded packages, as data science or machine learning projects can require libraries of different versions (Tensorflow 1.14/2.0, Python 2.7/3+, or Numpy). If you choose Conda to handle your package management, follow the instructions on the link provided.

* Download the command line installer for anaconda [here](https://www.anaconda.com/distribution/#download-section)
* Once the download finishes, we have a shell script that will install Anaconda. Run this script by using `bash ~/Downloads/[name of shell script]`
  * The name of your shell script should look like `Anaconda-something-here.sh`
* Now, we need to tell Zshell where our Anaconda installation resides.
  * Open your `.zshrc` file using Vim. Run: `vim .zshrc`
  * Hit `x`. The first line should be uncommented now.
  * Hit `ESC` and `:wq` + `ENTER` in order to save and exit Vim.
  * We have just told Zshell where to look in order to use Anaconda by updating our Zshell configuration file.

Let's test that everything is installed by running command `jupyter-notebook`.<br>
Use `CTRL + C` in order to terminate jupyter notebook.

### 5b. Virtualenv
The alternative to using Conda is to download Jupyter Notebook via python's pip3 tool. This is not a hassle; it is as easy as running the commands:
>`python3 -m pip install --upgrade pip`<br>
`python3 -m pip install jupyter`

To alternate between different library versions in this method, virtualenv is required.

Let's test that everything is installed with `jupyter notebook`. Use `CTRL + C` in order to terminate jupyter notebook.

### 5c. Overview
[Read about why Conda is superior to virtualenv](https://stackoverflow.com/questions/34398676/does-conda-replace-the-need-for-virtualenv). [Here is an example of how to use virtualenv, conda and pipenv](https://medium.com/@krishnaregmi/pipenv-vs-virtualenv-vs-conda-environment-3dde3f6869ed).

For the purposes of these notebooks, virtualenv is sufficient. You may assume that we are using Python 3+ and that all libraries are up to date. If they are not, we will list the version of the packages used.

## 6. Git - GITHUB
### 6a. Introduction
Git is a version control management system. You can save work, roll back changes, combine work done by disparate users, and deploy projects using Git. It's incredibly powerful and useful for collaboration, personal branding, education, and industry. There will be a separate module just for Git at a later date. We will use Github as our Git technology.

### 6b. Configuration

* create an account on [Github](https://github.com/)
* run `git clone https://github.com/benjaminykim/python_data_science_tutorial.git`
* throw a star and follow my profile

You have downloaded the files on this repository onto your server in a directory named `python_data_science_tutorial`. You now have access to the other tutorials and resource files.

## 7. Terminal Multiplexer - TMUX
### 7a. Introduction
Tmux allows users to have multiple 'little terminals' in one main terminal. Formally, it has:
1. Sessions - a process/unit that is running on a system. Tmux can be closed and have sessions continue in the background. This is great for remote installations, AI training, or processes that are time consuming
2. Windows - ideologically identical to a tab in the web browser
3. Panes - a division in the window/session. Divisions may occur horizontally or vertically

Install using `brew install tmux`

### 7b. Commands
Tmux also has something special called a prefix key. This will precede any command specific to tmux. By default, it is `CTRL + B`. I remap the prefix to `CTRL + A` and provide this change to in `7c. Configure Tmux`

For example, if you wanted to split your window vertically in Tmux, you would hit `CTRL + B` + `"`. To navigate between panes, you would use `<prefix> + o`. To split horizontally, `<prefix> + %`. To kill a pane, `<prefix> + x`.

Try it for yourself. Run `tmux` and try to split your window vertically. Here are [shortcuts](https://gist.github.com/MohamedAlaa/2961058) and a [guide](https://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/).

Run `exit` when you are done playing.

### 7c. Configure Tmux
I don't like some of the default commands in Tmux. So, I remapped a bunch of them. I even changed the prefix key from `CTRL + B` to `CTRL + A`. This really only makes a difference if you change `CAPS LOCK` to `CTRL`, which I have done on my Mac (who uses `CAPS LOCK` these days anyway other than to yell at people on basketball forums?). I highly recommend remapping `CAPS LOCK` to `CTRL` as it will prove beneficial in Vim and Tmux. Go to `System Preferences->Keyboard->Modifier Keys` to change.

Anyway, Tmux looks for a configuration file in the home directory named `.tmux.conf`. The `.` in the front of a filename (think `.zshrc`) suggests that the file is hidden and not available to users who do not know what they are doing. Since you know what you are doing, you can play with hidden files.

Run the command:
* `curl https://raw.githubusercontent.com/benjaminykim/python_data_science_tutorial/master/resources/.tmux.conf -o .tmux.conf -s`

Run the command `cat .tmux.conf` in order to peek at the configuration file.

Make sure you restart your terminal in order to source the `.tmux.conf` or else tmux will not update it's configuration file and these changes will not be implemented.

**.tmux.conf specific commands**

|Name|Command|
|-----|-----|
|prefix|ctrl + a|
|horizontal split|prefix + j|
|vertical split|prefix + k|
|swap pane|prefix + o|
|move panes|hold(prefix + o)|
|kill pane|prefix + x|
|kill window|prefix + &|
|resize pane left|prefix + h|
|resize pane right|prefix + l|

## 8. Text Editor - VIM
### 8a. Introduction
[Vim](https://en.wikipedia.org/wiki/Vim_(text_editor)?oldformat=true) is a text editor used in the command line interface (CLI). ***Vi*** is typically preinstalled in most Unix systems.

To start up Vim, run the command `vim myFirstFile.txt`. You have now entered Vim's development environment.

Vim is well used for quick script writing and fast development. If a debugger or more complex software tool is needed, an integrated development environment (IDE) is recommended. For the purposes of these learning modules, Vim/Atom and Jupyter Notebook are  sufficient.

##### Vim Modes (N, I, V)
The default user mode is `Normal`. The others are `Insert` and `Visual`. For our notebooks only normal `N` and insert `I` are necessary. You can run commands in `N` normal and write text in `I` insert modes.

* Enter `i` in the keyboard and observe the change from `N` to `I` modes
* Enter `Hello World`

##### Save and Exit your File (Write and Quit)

Use `N` mode to save the file and exit.

* Enter `<ESC>` and observe the change from insert to normal mode
* Enter `:w` and hit enter (write)
* Enter `:q` and hit enter (quit)

**Note**:  save and exit in one command by using `:wq`

##### Integration:
Let's verify that our file has the string `Hello World` inside of it by using a command introduced in module `7c. Configure Your Tmux`.

### 8b. Commands
##### Navigation
* `h` - left
* `j` - down
* `k` - up
* `l` - right

Navigating in Vim is challenging but rewarding. Use `h` `j` `k` `l` as Left, Down, Up, Right. Mnemonic devices `Jump Down` and `Kite Up` and the spatial relation of `h` and `l`. ***Never use your arrow keys***.

##### Inline Navigation
* `w` - one word forward
* `b` - one word backward
* `<number>` + `w`/`b` - number word(s) forward/backward
* `<number>` + `j`/`k` - number line(s) down/up
* `0` - move to beginning of line
* `$` - move to end of line


##### File Navigation
* `Shift + g` - move to bottom of file
* `g + g` - move to top of file
* `<number>` + `Shift + g` - move to line number

##### Screen Navigation
* `H` - move to top of screen
* `M` - move to middle of screen
* `L` - move to bottom of screen

##### Undo
* `u` - undo change(s)

##### Deletion
* `x` - delete a character
* `d` deletes from where the cursor is until navigation
  * `d1w` - delete one word
  * `d2j` - delete two lines down
  * `d + Shift + g` - delete until the bottom of the file
* `d + d` - delete the current line
* `s` - delete the current character and enters `I` mode

##### Insertion
* `o` - create a new line below
* `O` - create a new line above
* `a` - enter insert mode one character after the cursor

##### Copy
* `y` - copy text from current position until navigation (just like delete)
* `y + y` - copy the current line
* `p` - paste

##### Search
* Enter `/` and search word
* Navigate through matches using `n` and `p`
* Turn off highlights with command `:noh` (no highlight)

##### Alternative Save and Exit
If there are no changes made to the file, it will not override the written file and simply exit Vim.
* `Shift + Z + Z` - write file and quit Vim

If you believe an intelligent text editor should be able to do something, the odds are that Vim can.

### 8c. Configure Vim
Run `curl https://raw.githubusercontent.com/benjaminykim/python_data_science_tutorial/master/resources/.vimrc -o .vimrc -s`

Your Vim is now configured. Inspect the contents of the `.vimrc` file. The main features are:
* Enter `N` mode by using `jk` or `kj` in `I` mode
  * this ensures your left hand doesn't have to move to much in order to enter `N`
  * pressing `ESC` to enter `N` takes time and causes strain to the left pinky (vim/emacs pinky phenomena)
* Move text tabularly in `N` mode
  * Use `SHIFT + TAB` or `TAB` to move text backward/forward by a tab
* Save using `CTRL + S` in `N` mode
  * If you remapped `CAPS LOCK` to `CTRL` as suggested earlier, this becomes even more useful. Remapping `CAPS LOCK` mitigates the vim/emacs pinky

## 9. Conclusion
***What can we do with all we've done?***
* iterm2 to manage your system, run programs, code, download libraries, share code, and train AI
* brew to deal with installations
* zsh to do make everything easier in terminal
* atom to write code
* jupyter notebook to make beautiful visualizations and write sharable, interactive code
* github to share our files and track changes for safety
* tmux to organize our terminal activities
* vim to write code

***What should I keep in mind?***<br>
Vim is hard to use, but consistency over time brings efficiency and mastery. Git is an essential toolkit of any modern developer. All configuration files provided are basic, which is out of design as it grants others the freedom to customize these services as they like. Take a look online for what other people have done with their shell, tmux, and vim configurations.

***What's next?***<br>
Run jupyter notebook. You may open `Linux Tutorial.ipynb` inside of Jupyter hub for the next tutorial.
