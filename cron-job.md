# Cron Job Guide

## What is a Cron Job?
A cron job is a scheduled task that runs automatically at specified intervals on Unix-based operating systems. 
The cron daemon, which runs in the background, checks the /etc/crontab file and the /var/spool/cron directory for scheduled jobs and executes them at the appropriate times.
Cron jobs are commonly used for system maintenance, backups, monitoring, and other repetitive tasks that need to run at specific times or intervals.

## Understanding the Crontab Syntax
The crontab file contains a list of commands meant to be run at specified times. 

Each line in the crontab file represents a scheduled task and follows this format:
```sh
* * * * * command_to_execute
- - - - -
| | | | |
| | | | ----- Day of the week (0 - 7) (Sunday is both 0 and 7)
| | | ------- Month (1 - 12)
| | --------- Day of the month (1 - 31)
| ----------- Hour (0 - 23)
------------- Minute (0 - 59)
```

### Special Characters
`*`: Represents all possible values (e.g., every minute, every hour)

`,`: Separates multiple values (e.g., "1,15" means at minute 1 and minute 15)

`-`: Specifies a range of values (e.g., "1-5" means from minute 1 to minute 5)

`/`: Specifies step values (e.g., "*/5" means every 5 minutes)


## Managing Cron Jobs

### Viewing Cron Jobs
To view your scheduled cron jobs, use:
```sh
crontab -l
```
### Editing Cron Jobs
To edit your cron jobs, use:
```sh
crontab -e
```
This command opens the crontab file in the default text editor.

### Removing Cron Jobs
To remove all scheduled cron jobs, use:
```sh
crontab -r
```
## Example of a Cron Job

### Let's create a cron job that backs up a directory every day at midnight.

1. **Open the Crontab File**:
```sh
crontab -e
```

2. **Add the Cron Job**:
Add the following line to schedule the backup job:
```sh
0 0 * * * /home/user/backup.sh
```
This cron job runs the backup.sh script located in /home/user at midnight every day.

3. **Sample Backup Script**

Create a script named backup.sh with the following content:

```sh
#!/bin/bash
# Directory to back up
SOURCE="/home/user/documents"
# Backup destination
DESTINATION="/home/user/backup"
# Create a backup
tar -czf $DESTINATION/backup_$(date +\%F).tar.gz $SOURCE
```

4. **Make the Script Executable**:
```sh
chmod +x /home/user/backup.sh
```
This script compresses the contents of the /home/user/documents directory into a tarball and stores it in the /home/user/backup directory. 
The backup file is named with the current date.

### Common Cron Job Examples

#### Run a script every 5 minutes:
```sh
*/5 * * * * /path/to/script.sh
```

#### Run a script every day at 6 AM:
```sh
0 6 * * * /path/to/script.sh
```
#### Run a script every Monday at 9 AM:
```sh
0 9 * * 1 /path/to/script.sh
```

#### Run a script on the first day of every month:
```sh
0 0 1 * * /path/to/script.sh
```

This guide provides an overview of cron jobs, how to manage them, and includes an example of a daily backup script. 
Cron jobs are a powerful way to automate routine tasks in a Unix-based system

[<< Previous](./basic-bash-commands.md)     [Home](./README.md)     [Next >>](./examples/examples.md)
