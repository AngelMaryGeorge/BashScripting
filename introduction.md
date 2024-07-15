# Introduction to Bash Scripting

## What is Bash?
Bash (Bourne Again SHell) is a Unix shell and command language written by Brian Fox for the GNU Project as a free software replacement for the Bourne shell. 
Bash is the default login shell for most Linux distributions and macOS. 
It provides users with an interface to interact with the system by executing commands, running scripts, and performing various tasks. 
Bash is both a command interpreter and a programming language, making it versatile for both interactive use and scripting.


## What is Bash Scripting
Bash scripting allows users to automate tasks in a Unix-based operating system. 
A script is essentially a series of commands written in a file, which can be executed sequentially. 
Scripts can be used to automate repetitive tasks, configure system settings, manage files, and perform complex operations by combining multiple commands. 
Bash scripts can also accept input from users and produce output, making them useful for a wide range of applications.

## Shebang 
The shebang (#!) is a character sequence at the beginning of a script that indicates which interpreter should be used to execute the script. 
It is followed by the path to the interpreter. For Bash scripts, the shebang line is typically #!/bin/bash. 
This tells the system to use the Bash shell to execute the commands in the script.

## How to Write Bash Scripts?
1. **Create a new file**:
```sh
touch script.sh
```
2. **Make the script executable**:
```sh
chmod +x script.sh
```
3. **Write your script**: Open the file in a text editor and add your Bash commands. 

   A basic script structure looks like this:
   ```sh
   #!/bin/bash
   echo "Hello, World!"
   ```
4. **Run the script**: Open terminal and execute the script file.
```sh
./script.sh
```
## Variables and Data Types in Shell Scripting
Variables in shell scripting are used to store data temporarily. Unlike other programming languages, shell scripting has loosely typed variables.

- Declaring Variables:
   ```bash
   name="John"
   age=30
   ```
- Data Types:
   - String: Textual data (name="John").
   - Integer: Numeric data (age=30).
   - Arrays: List of values (array=(value1 value2 value3)).

- Special Variables:
   - $0: Name of the script.
   - $1, $2, ...: Positional parameters passed to the script.
   - $@: All positional parameters as separate words ("$@" expands each parameter as a separate word).
   - $#: Number of positional parameters.
   - **$?: Exit status of the last command.
   - $$: PID (Process ID) of the current shell.
     
[<< Back to Home](./README.md)                                              
[Next >>](./basic-bash-commands.md)


