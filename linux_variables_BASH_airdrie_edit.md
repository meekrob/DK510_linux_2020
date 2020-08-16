# Scripting: Variables

So far we have chained commands together, such as `grep`,`sort` and `cut`, using pipes or intermediate files. But these examples have largely been a laundry list of commands. To expand the functionality of our scripts, we use variables.

Think of variables as placeholders for short pieces of information that:

* can be reused multiple places in a script,
* can be determined during the execution of the script (remember Erin's script that asked for the directory name),
* can be used and updated frequently, such as a running tally.
* Variables are flexible and up to the designs and creativity of the programmer (that's you).

General form (setting/accessing):


```bash
varname="value"
```

The word `varname` is now a *reference* to the stored information "`value"`. A way to use it is with `echo`.


```bash
echo varname
echo $varname
```

Notice that the first command returned `varname`, just as we had written it.

Whereas, the second line used `$varname` and returned `value`. The key difference is the dollar sign `$` attached to the variable name. 

This is called *dereferencing*:

`varname` is a reference to the stored value `value`.

## More examples


```bash
favoriteColor="red"
favoriteNumber=42
joke="I poured spot remover on my dog. Now he's gone."
 
echo $favoriteColor
echo $favoriteNumber
echo $joke
```

Notice that the variable names are descriptive of the values they store. It is good practice to use descriptive variable names, although some common examples (such as for-loops) use simple ones by convention. We'll discuss those later.

## Useful examples

Use the command `echo` to print the *value* of the variable `USER`. Hint: use `echo $USER`


```bash
echo $USER
```

The word USER is a reference to your username.

## Environmental variables

An important use of variables is to configure your environment. Your session uses these variables for different purposes. They are all caps by default.

To see them, type the command `printenv`. (This is a lot of output - click the blue border to collapse afterward)


```bash
printenv
```

Some notable environmental variables:
* USER
* PWD
* PATH
* HOME

Probably the most important is the PATH. It contains all the locations (PATHs) were installed programs are.


```bash
echo $PATH
```


```bash
echo $PATH | tr ':' "\n"
```

In the second command, we are printing the paths out line by line instead of merged by colons ':'.

If you can execute a command, then it is a program that resides in one of those directories. To find out where, use `which`


```bash
which echo
which mv
```


```bash
# Let's look at all the commands in /bin (might be a lot of output)
ls /usr/bin
```

This is a pretty complete list of commands that are available to you. *Most are safe* to run by themselves- they will just give a usage message- ***but just to be safe***, try running one of: `pwd`, `file`, `chmod`


```bash
pwd
file
chmod
```

You might see a pink `: 1`, that indicates an error, because the program didn't receive runnable arguments.


```bash
# what happens without PATH? Save it first by setting it to a new variable
PATHSAVE=$PATH


# the DANGEROUS command, but we can restore it
unset PATH
ls -l
```

Notice you can no longer `ls` anything. This time, I got a pink `: 127`, which also means an error. In fact, anything that's not a `0` is an error! but you will never see `: 0` because it will return the program output instead.


```bash
# let's restore part of the PATH, by adding `/bin`
PATH=/usr/bin
```

What is a command that is ***NOT* restored** by just adding `/usr/bin` to the PATH? Try listing one of the PATH directories we listed above that is not `/usr/bin`.


```bash
ls -l /opt/anaconda3/bin
```

On here (CURC jupyter lab), we all have the same configuration, but this will differ on different computers.

Let's restore the basic commands. Type `PATH=$PATHSAVE`. 


```bash

```

If that doesn't work, don't worry, because that's the last command of this notebook.

## Save this notebook.

Click the little file disk icon in the upper left.

## Download this notebook as a script.

File -> Download as... --> Bash (.sh)

