# Basic Bash Commands

**ls**   : List directory contents

**cd**   : Change directory

**pwd**  : Print working directory

**cp**   : Copy files or directories

**mv**   : Move/rename files or directories

**rm**   : Remove files or directories

**echo** : Display a line of text

**cat**  : Concatenate and display files

**grep** : Search for patterns in files


## Bash Operators

### Arithmetic Operators:
```sh
echo $((2 + 2))  # Addition
echo $((5 - 3))  # Subtraction
echo $((4 * 3))  # Multiplication
echo $((8 / 2))  # Division
echo $((10 % 3)) # Modulus
```

### Comparison Operators:
```sh
[ 5 -eq 5 ]   # Equal to
[ 5 -ne 3 ]   # Not equal to
[ 5 -gt 3 ]   # Greater than
[ 3 -lt 5 ]   # Less than
[ 5 -ge 5 ]   # Greater than or equal to
[ 3 -le 5 ]   # Less than or equal to
```

### Logical Operators:
```sh
[ 5 -eq 5 ] && echo "Equal"      # AND
[ 5 -eq 5 ] || echo "Not Equal"  # OR
```

## Bash Conditional Statements

### if statement:

Conditional statements allow you to execute certain commands based on specified conditions.

```sh
if [ condition ]; then
  # code to execute if condition is true
elif [ another_condition ]; then
  # code to execute if another_condition is true
else
  # code to execute if all conditions are false
fi
```

**Example**:

```sh
#!/bin/bash
if [ -d "/home/user" ]; then
  echo "Directory exists"
else
  echo "Directory does not exist"
fi
```

## Bash Loops
Loops allow you to iterate over a set of commands repeatedly.

### for loop:
Executes a sequence of commands for each item in a list or range.

```sh
for i in {1..5}; do
  echo "Welcome $i times"
done
```

### while loop:
Executes a set of commands as long as a specified condition is true.

```sh
count=1
while [ $count -le 5 ]; do
  echo "Welcome $count times"
  count=$((count + 1))
done
```

## Bash String

### String Manipulation:
```sh
str="Hello, World!"
echo ${str:7}          # Output: World!
echo ${str:7:5}        # Output: World
echo ${str/World/Bash} # Output: Hello, Bash!
```

## Bash Array

### Defining and Using Arrays:
```sh
array=("apple" "banana" "cherry")
echo ${array[0]}  # Output: apple
echo ${array[@]}  # Output: apple banana cherry
```

### Looping through an Array:
```sh
for element in "${array[@]}"; do
  echo $element
done
```

## Bash Function
Functions in shell scripts allow you to group code into reusable blocks.

### Defining and Calling Functions:

```sh
my_function() {
  echo "Hello from the function!"
}
my_function  # Call the function
```

### Function with Parameters:

```sh
greet() {
  echo "Hello, $1!"
}
greet "Alice"  # Output: Hello, Alice!
```

## Error Handling in Shell Scripts
Error handling ensures scripts gracefully handle unexpected situations or errors.

### Exit Status:
- Every command in Linux returns an exit status (0 for success, non-zero for failure).
- Use $? to get the exit status of the last command.

### Handling Errors:
``` bash
command
if [ $? -ne 0 ]; then
    echo "Error: Command failed"
    exit 1
fi
```

### Error Handling Techniques:
Exit Codes: Use exit to terminate the script with a specific exit status.

Error Messages: Display meaningful error messages using echo.

Logging: Redirect error output (stderr) to a log file for troubleshooting.

[Home](./README.md) [Next >>](./cron-job.md)
