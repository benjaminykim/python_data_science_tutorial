
# Development Setup Tutorial

I've made a learning module to guide those interested in pulling on what I've partially used for my development environment. For heftier projects, I'll use an integrated development environment with a debugger/compiler, but for most Python/Data Science/Machine Learning I write quick scripts that benefit from this type of dev environment. 

While these tutorials are designed for MacOS, there should be little difficulty in migrating towards a Linux OS. Just skip steps 1/2, and use `sudo apt-get install` in place of `brew install`.

If you are on a Windows OS, fear not. You can always use a tool such as VirtualBox or VMWare in order to **emulate** a Linux OS on your computer. Or, you could download a Linux OS distribution onto a flash drive and start there.

Lastly, you are on a Chromebook. In that case, you may be able to access Jupyter Notebooks through the web browser if you can find a service that provides this. I have done it before. Worst case scenario, you may save up for a $100 Lenovo Thinkpad on Craigslist and boot a Linux distro, or you can risk overriding Chromium OS on your book and boot a lightweight Linux Distro on that (it might break your chromebook). 

Google will always be your friend.

## Table of Contents
1. Terminal
2. Package Management
3. Shell
4. Text Editor
5. Jupyter Notebook
6. Git

Additional Materials
7. Terminal Multiplexer
8. Text Editor - Vim

## 1. Terminal - ITERM2
* [What is a terminal? How do I use it?](https://askubuntu.com/questions/38162/what-is-a-terminal-and-how-do-i-open-and-use-it)
* [iTerm2](https://iterm2.com/features.html) is a replacement for Terminal. It has a ton of features that prove useful in the development or sysadmin environment.
* [Comparison of Iterm2 and Terminal](https://medium.com/@xanderdunn/iterm2-vs-terminal-c06976f106ef)
* Download [here](https://www.iterm2.com/downloads.html)

## 2. Package Management - HOMEBREW
* How do I install stuff easily using a terminal? What will manage the packages/libraries/programs that I want on my system?
>[Homebrew](https://brew.sh/) is a free and open-source software package management system that simplifies the installation of software on Apple's macOS operating system and Linux. The name is intended to suggest the idea of building software on the Mac depending on the user's taste.
* Open Iterm2 and run the command:
  * `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

## 3. Shell - ZSHELL
### 3a. Download Zsh
* To understand why you should download Zsh, you should first understand what a shell is and what bash is
  >Bash is a command processor that typically runs in a text window where the user types commands that cause actions. Bash can also read and execute commands from a file, called a shell script. Like all Unix shells, it supports filename globbing (wildcard matching), piping, here documents, command substitution, variables, and control structures for condition-testing and iteration. The keywords, syntax, dynamically scoped variables and other basic features of the language are all copied from sh. - [Wikipedia](https://en.wikipedia.org/wiki/Bash_(Unix_shell)?oldformat=true)
* [Here](https://www.howtogeek.com/362409/what-is-zsh-and-why-should-you-use-it-instead-of-bash/) is why Zsh proves to be more useful than Bash
* Run the command:
  * `brew install zsh`

### 3b. Download Oh-My-Zsh
* Pimp your Zsh with [this](https://github.com/ohmyzsh/ohmyzsh) framework. Inspect their readme for more information/utility
* Run the command: 
  * `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### 3c. Configure Your Shell
Most shells by default search for a configuration file in your home directory. "RC" stands for [run commands](http://www.catb.org/jargon/html/R/rc-file.html). For instance:
* BASH > .bashrc
* ZSH > .zshrc

So you'll need to create a file named .zshrc in your home directory in order to provide a start up script for your shell to run once you initiate your command line interpreter (CLI = terminal). However, in order to do so we need to know how to create a file, navigate your system, manipulate files/directories(folders), and execute commands all by using your CLI.

That can take us down a long tangent that we'll get into in a later notebook. For now, run the command:
* `curl https://raw.githubusercontent.com/benjaminykim/dev_tut/master/.zshrc -o .zshrc -s`

To verify that it works, quit your Zshell process entirely (CMD + Q) and restart it. Then run the command `ll`. You should see something cool.

 ***(Veteran Freebie)***


## 4. Text Editor - ATOM
We will initially edit text using Atom. It is a very straightforward text editor. Install [here](https://atom.io/).

# 5. Python Web Interpreter - JUPYTER NOTEBOOK
## 5a. Anaconda
Jupyter Notebook is a data science tool for creating interactive, visual code stories. It is used for data visualization, code sharing, education, and data science purposes. The best long term way to use Jupyter Notebook is through the package manager and data science platform [Anaconda](https://www.anaconda.com/why-anaconda/). There is extensive utility in using Conda, and I recommend it if one's primary use for programming is for data science -especially more so if Python or R are the only languages necessary to the user. Conda handles library installation and version control. This allows users to quickly switch in between different versions of donwloaded packages, as data science or machine learning projects can require libraries of different versions (Tensorflow 1.14/2.0, Python 2.7/3+, or Numpy). If you choose Conda to handle your package management, follow the instructions on the link provided.

## 5b. Virtualenv
The alternative to using Conda is to download Jupyter Notebook via python's pip3 tool. This is not a hassle; it is as easy as running the commands:
>`python3 -m pip install --upgrade pip`<br>
`python3 -m pip install jupyter`

To alternate between different library versions in this method, virtualenv is required.


## 5c. Overview
[Read about why Conda is superior to virtualenv](https://stackoverflow.com/questions/34398676/does-conda-replace-the-need-for-virtualenv). [Here is an example of how to use virtualenv, conda and pipenv](https://medium.com/@krishnaregmi/pipenv-vs-virtualenv-vs-conda-environment-3dde3f6869ed).

For the purposes of these notebooks, virtualenv is sufficient. You may assume that we are using Python 3+ and that all libraries are up to date. If they are not, we will list the version of the packages used.

## 6. Git - GitHub
### 6a. Introduction
Git is a version control management system. It is a system that manages what version of your files you currently have. You can save work, roll back changes, combine work done by disparate individuals, and deploy projects using Git. It's incredibly powerful and useful for collaboration, personal branding, education, and industry. There will be a separate module just for Git at a later date.
### 6b. Configuration
For now:
* create an account on [Github](https://github.com/)
* run `git clone https://github.com/benjaminykim/dev_tut.git`

You have just downloaded the files on this repository onto your server. This is where I was storing the configuration files for Zsh and more. This is also where this .README is hosted.

### Integration:
Now, in your home directory, run the command:
>`jupyter notebook`

Something happens!

We can see in your web browser a file system that should include `dev_tut` as a directory (folder). Alas.

## Big Picture
There we have it, a development environment on MacOS that will do quite nicely for the time being. On a linux distribution, we can skip steps 1 and 2 as the default terminal on distributions such as Ubuntu are sufficient, and the installation methods are more straightforward than on MacOS. Here's an overview:

***What can we do with all we've done?***
* We can use iterm2 to manage your system, run programs, code, download libraries, share code, and train AI.
* We can use brew to deal with installations.
* We can use zsh to do make everything easier in terminal.
* We can use atom to write code.
* We can use jupyter notebook to make beautiful visualizations and write sharable, interactive code
* We can use github to actually share our files and make sure we're keeping track of our changes for safety

Here's what we haven't done yet
7. Install a terminal multiplexer (service that makes terminal more efficient in terms of workflow) (TMUX)
8. Install a terminal embedded text editor and configured it for efficiency/plugins (VIM)

***Stop here and move on if time is limited.*** Tmux and Neovim are significant time sinks in learning actual programming. They do provide a lot of functionality and awesomesauce, and are definitely worth the investment. However, if you only have 3-15 days to learn, focusing on theory will prove to be far more beneficial than sinking a lot of time in auxillary technologies that don't deepen computational understanding.

# Advanced Development Setup (Optional)

## 7. Terminal Multiplexer - TMUX
### 7a. Introduction
Install using `brew install tmux`.

Tmux allows users to have multiple 'little terminals' in one main terminal. Formally, it has:
>1. Sessions - a process/unit that is running on a system. You can close tmux and have sessions continue to run in the background. This is great for remote installations, AI training, or processes that are time consuming.
2. Windows - ideologically identical to a tab in your web browser. A session can have multiple windows and you can navigate between windows.
3. Panes - a division in your window/session (your window is your session if you have no other windows open). Divide your window vertically/horizontally in order to help with your workflow.

### 7b. Commands
Tmux also has something special called a prefix key. This will precede any command specific to tmux. By default, it is `CTRL + B`. I don't like this prefix key and I remap it in my configuration file which is made available to you.

For example, if you wanted to split your window vertically in Tmux, you would hit `CTRL + B` + `"`. To navigate between panes, you would use `<prefix> + o`. To split horizontally, `<prefix> + %`. To kill a pane, `<prefix> + x`.

Try it for yourself. Run `tmux` and try to split your window vertically. Here are [shortcuts](https://gist.github.com/MohamedAlaa/2961058) and a [guide](https://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/).

Run `exit` when you are done playing with tmux.

### 7c. Configure your Tmux
I don't like some of the default commands in Tmux. So, I remmapped a bunch of them. I even changed the prefix key from `CTRL + B` to `CTRL + A`. This really only makes a difference if you change `CAPS LOCK` to `CTRL`, which I have done on my Mac (who uses `CAPS LOCK` these days anyway other than to yell at people on basketball forums?). I highly recommend remmapping your `CAPS LOCK` to `CTRL` as it will prove beneficial in VIM.

Anyway, Tmux looks for a configuration file in your home directory. It is typically named `.tmux.conf`. If you were wondering what the `.` in front of a file name implies (think `.zshrc`), it suggests that the file is hidden and not available to users who do not know what they are doing. Since you know what you are doing, you can play with hidden files.

Run the command:
* `curl https://raw.githubusercontent.com/benjaminykim/dev_tut/master/.tmux.conf -o .tmux.conf -s`

To see what instructions lie inside of this file, run the command `cat .tmux.conf` in order to peek inside. Read through the output of that command.

**here are some .tmux.conf specific commands**

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

Vim is good for quick script writing and fast development. If you need a debugger something more hefty is preferable. For our purposes, Vim/Atom and Jupyter Notebook are more than sufficient. Choose Atom for a 20X smaller learning curve.

#### Vim Modes (N, I, V)
The default user mode is `Normal`. The others are `Insert` and `Visual`. For our notebooks only normal `N` and insert `I` are necessary. You can run commands in `N` normal and write text in `I` insert modes.

* Enter `i` in the keyboard and observe the change from `N` to `I` modes.
* You may now enter text. 
* Enter `My first file`

#### Save and Exit your File (Write and Quit)

Now we will save the file. In order to save, we must be in `N` normal mode.

* Enter `<ESC>` and observe the change from insert to normal mode.
* Now you may run commands in Vim.
* Now you may save your file.
* Enter `:w` and hit enter.
* Enter `:q` and hit enter.

`w` command will write your file (save). `q` command will quit Vim (exit). You may save and exit by `:wq`.

#### Integration:
Enter your file again using `vim`. Add some more text to the file, save and exit. Now print the contents of the file to standard output. In module `5.c Configure Your Tmux` we introduce a command that can accomplish this task for you.

### 7b. Commands
Navigating in Vim is challenging but rewarding. Never use the arrow keys to navigate inside your Vim environment. Instead use `h` `j` `k` `l` as Left, Down, Up, Right. I use mnemonic devices `J goes DOWNtown` and `Kite Up` for vertical navigation and the spatial relation of `h` and `l` for horizontal. ***Never use your arrow keys***.

To go one word forward, use `w`; one word back, use `b`. To go x words foward/back, enter the number `x` and `w`/`b`.
To go x lines up/down, enter the number and `k`/`j`.

Use `Shift + G` for bottom of file, `g + g` for top of file. Shift bottom g-g up.

Enter a valid line number and use `Shift + G` to move to that line.

Use `0` zero to go to the beginning of a line. Use `$` to go to the end. They are opposite spatially on the keyboard to how they move the cursor inline in Vim.

#### Deletion
These all stay in normal mode unless specified otherwise.
* `x` deletes a character.
* `d` deletes from where the cursor is until where it ends after navigation (use `d1w` to delete until the beginning of the next word, `d2j` to delete two lines down, `d + Shift + g` to delete until the bottom of the file`).
* `d + d` deletes the current line.
* `s` deletes the current character and enters `I` mode.

#### Insertion
These all enter insert mode
* `o` creates a new line below and enters insert mode, moving cursor along
* `O` creates a new line above and enters insert mode, moving cursor along
* `a` enters insert mode one character after the cursor

#### Copy
* `y` copies text from current position until navigation end
* `y + y` copies the current line
* `p` pastes

#### Search
* In `N` mode, enter `/` and enter your search word
* You may navigate through the matches using `n` and `p`.
* You may cancel highlights by entering command `:noh` (no highlight)

#### Alternative Save and Exit
Use `Shift + Z + Z` to write and quite your file. If there are no changes, it will not override the write (subtle difference, creates efficiency for large files and updating as you won't need to reupload a file to a remote database just because you wanted to inspect it in Vim).

This is an extremely thorough beginners look at Vim, but it will open doors for 95% of typical usecase in the editor. However, this is not a comprehensive capture of Vim. There is so much more one can do...

### 7c. Configure your Vim
Run `curl https://raw.githubusercontent.com/benjaminykim/dev_tut/master/.vimrc -o .vimrc -s`
Your Vim is now configured. Check out the contents again and skim through things. The three things to take away are:
1. You can now enter `N` mode using `jk` or `kj` in `I` mode.
    * this ensures your left hand doesn't have to move to much in order to enter `N` mode. This is advantageous because pressing `ESC` to enter normal mode every time can be time consuming.
2. You can now move text tabularly in `N` mode.
    * Use `SHIFT + TAB` or `TAB` to move text backward/forward
3. You can now save using `CTRL + S` in `N` mode. If you remmaped `CAPS LOCK` to `CTRL` as suggested earlier, this becomes even more useful.
