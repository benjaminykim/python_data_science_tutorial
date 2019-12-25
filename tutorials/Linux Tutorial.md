
# Linux Tutorial

This is a brief introduction to system administration in Linux.

Your terminal provides a command line interface that you can send commands to. In return, your system properties may change and you may receive information from the Standard Output of your Unix System.

You are familiarized with a graphical version of this (which Apple popularized with their GUI).

Let's begin.

## Baby Steps
Open up your terminal. Currently, where are you in your file system?

`pwd` = print working directory

You should see the name of the directory you are in. It should resemble `/Users/user_name`. You are currently in your home directory.

Let's see what is inside your home directory. How may we see the contents?

`ls` = list

You should see names of directories and files. To grab more information about these contents, lets use:

`ls -al` = list (all long)

We just configured the property of how we use the `ls` command by passing along some values `a` and `l` denoted by the flag `-`. Try just running `ls -a` and `ls -l` and see what happens.

So how do we know what a command does and what options are available?

* `type -m '*'` will display every available command available to your shell
* `man <COMMAND>` will display the manual of the command passed as an argument.

Let's quickly run `man cat` to learn more about that `cat` command we used previously.

## Integration with our .zshrc
Now, we've tinkered with our .zshrc to make zshell easier to use. Let's see what's inside our .zshrc file once more by using cat. If we inspect our aliases, we can see that we've set up stuff equal to other stuff. Those are our shortcuts.

Now instead of running `ls -al` everytime we want to see information about our files, we can use `ll` instead. It's much more concise and will save on time. This is made possible by the line `alias ll='ls -al`.

What do you think `cd ..` does? And `cd ../..`?

If you ever get lost in your system, remember that `pwd` shows you where you are, `cd <directory_path>` moves you to your destination, and `cd` alone will move you to your home directory.

## Jumping In

Here's a bunch of commands. You have `man` now, and that guy knows everything. You also have google.
* `ls` = list
* `pwd` = print working directory
* `clear` = clear terminal output
* `cat` = concatenate or print a file
* `rm` = remove a file
* `mv` = move
* `rm -rf` = force remove a file or directory and everything inside
* `cp` = copy
* `mkdir` = make a directory
* `touch` = create a file
* `ll` = lists everything
* `lc` = clears screen and lists everything
* `..` = change directory to the parent directory (outside folder)
* `man` = RTFM (use `SHIFT + g + g` to exit `man` output)

## File Structure

Before we begin programming, let's create a reasonable file structure for our Python learning modules.

* Home Directory
  * code
    * ex00
    * ex01
    * ex02
    * ..


* Let's create a directory named `code` in our home directory `mkdir code`
* Let's create a subdirectory inside `code` called `ex00`. Run `cd code` and `mkdir ex00`. Or, you can run `mkdir code/ex00`
* Create multiple directories by using `mkdir ex00 ex01 ex02`

Training wheels are off now. All of our exercises, notebooks, projects, and git repositories will exist in our code directory. Resist the temptation to open this directory in `Finder`. If you absolutely need to access something in this directory, run `open .`
