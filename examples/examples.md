# Introduction
This file contains example bash scripts along with its output screenshots! 
Click on script to open the script file.

Happy learning!

## Table of Contents
1. [Archive a folder](#archive-a-folder)
2. [Check SSH Connections](#check-ssh-connections)
3. [Clean-temp-files](#clean-temp-files)
4. [Clear Cache](#clear-cache)
5. [CPU Details](#cpu-details)
6. [Delete a User](#delete-a-user)
7. [Disk Space Info](#disk-space-info)
8. [Network Details](#network-details)
9. [Restart a Service](#restart-a-service)
10. [Get Status of a Service](#get-status-of-a-service)
11. [Setup Firewall](#setup-firewall)
12. [Update System](#update-system)
13. [Create User](#create-user)
14. [List all Installed Packages](#list-all-installed-packages)
15. [List Large Files](#list-large-files)

## Archive a folder
 This script creates a compressed archive (.tar.gz) of a specified source directory 
 and places it in a specified destination directory with a specified filename.

**Usage**:
- Save the script to a file (e.g., create_archive.sh).
- Make the script executable: chmod +x create_archive.sh.
- Run the script: ./create_archive.sh.
- Follow the prompts to enter the source directory path, destination directory, and filename for the archive.

 [Script](./examples/archive.sh)

 Output Screenshot:
 
 ![image](https://github.com/AmalSunny992/bashscripts/assets/169422802/248426ae-08c8-4304-9da9-f0aafb5566ea)


## Check SSH Connections
This shell script checks and displays the number of active SSH connections on the system.

**Usage**:
- Save the script to a file (e.g., check-ssh-connections.sh).
- Make the script executable: chmod +x check-ssh-connections.sh.
- Run the script: ./check-ssh-connections.sh.

[Script](./examples/check-ssh-connections.sh)

Output Screenshot:

![image](https://github.com/AmalSunny992/bashscripts/assets/169422802/66a98ea8-0420-471a-9200-fbee41eef4e3)


## Clean-temp-files
This shell script deletes files in the /tmp directory that are older than 7 days.

**Usage**:
- Save the script to a file (e.g., clean-temp-files.sh).
- Make the script executable: chmod +x clean-temp-files.sh.
- Run the script with sudo privilages: sudo ./clean-temp-files.sh.

[Script](./examples/clean-temp-files.sh)

Output Screenshot:

![image](https://github.com/AmalSunny992/bashscripts/assets/169422802/3a922d7b-b2ee-4b0a-957e-f8068058501d)


## Clear Cache
This shell script clears the system cache.

**Usage**:
- Save the script to a file (e.g., clear-cache.sh).
- Make the script executable: chmod +x clear-cache.sh.
- Run the script: ./clear-cache.sh.

[Script](./examples/clear-cache.sh)

Output Screenshot:

![image](https://github.com/AmalSunny992/bashscripts/assets/169422802/ce45e45a-5f40-409b-a24c-6ea62ec4e85c)


## CPU Details
This shell script displays various pieces of system information

**Usage**:
- Save the script to a file (e.g., cpu.sh).
- Make the script executable: chmod +x cpu.sh.
- Run the script: ./cpu.sh.

[Script](./examples/cpu.sh)

Output Screenshot:

![image](https://github.com/AmalSunny992/bashscripts/assets/169422802/73c53ddb-b127-4b78-b189-05e410a4c06f)


## Delete a User
This shell script deletes a specified user from the system, ensuring that it is run with root privileges

**Usage**:
- Save the script to a file (e.g., delete-user.sh).
- Make the script executable: chmod +x delete-user.sh.
- Run the script with sudo privileges: sudo ./delete-user.sh.

[Script](./examples/delete-user.sh)

Output Screenshot:

![image](https://github.com/AmalSunny992/bashscripts/assets/169422802/f433b09b-0636-4b06-a085-4388196cc9a0)


## Disk Space Info
This shell script displays disk allocation and memory usage information.

**Usage**:
- Save the script to a file (e.g., diskspace.sh).
- Make the script executable: chmod +x diskspace.sh.
- Run the script: ./diskspace.sh.

[Script](./examples/diskspace.sh)

Output Screenshot:

![image](https://github.com/AmalSunny992/bashscripts/assets/169422802/59971621-6304-4ded-8a1d-e16c932e7d17)


## Network Details
This shell script displays network details of the system, including the hostname, IP address, DNS servers, and gateway

**Usage**:
- Save the script to a file (e.g., network.sh).
- Make the script executable: chmod +x network.sh.
- Run the script: ./network.sh.

[Script](./examples/network.sh)

Output Screenshot:

![image](https://github.com/AmalSunny992/bashscripts/assets/169422802/f0631565-ea7e-4bda-be90-90489074726e)

## Restart a Service
This shell script prompts the user to enter the name of a service, attempts to restart the specified service, and provides feedback on whether the operation was successful

**Usage**: 
- Run the script and enter the name of the service you want to restart when prompted. 

For example:

```bash
sudo ./script.sh
Enter Service name to restart: apache2
```

[Script](./examples/restart-service.sh)

Output Screenshot:

![image](https://github.com/AmalSunny992/bashscripts/assets/169422802/2241b836-8add-4328-a68e-85841a411c6d)

## Get Status of a Service
This shell script checks whether a specified service is running using systemctl.

**Usage**:
- Run the script with the name of the service you want to check as an argument.

For example:

```bash
./script.sh apache2
```

[Script](./examples/service-status.sh)

Output Screenshot:

![image](https://github.com/AmalSunny992/bashscripts/assets/169422802/f651bf6d-cf08-4a1b-992e-9dbea127a9bb)

## Setup Firewall
This shell script sets up basic firewall rules using ufw (Uncomplicated Firewall).

**Usage**:
- Save the script to a file (e.g., setup-firewall.sh).
- Make the script executable: chmod +x setup-firewall.sh.
- Run the script with sudo privileges: sudo ./setup-firewall.sh.

[Script](./examples/setup-firewall.sh)

Output Screenshot:

![image](https://github.com/AmalSunny992/bashscripts/assets/169422802/59a14576-06dc-4e05-a9f3-6c21da9d2172)


## Update System
This script updates the system packages using apt.

**Usage**:
- Save the script to a file (e.g., update_system.sh).
- Make the script executable: chmod +x update_system.sh.
- Run the script with sudo privileges: sudo ./update_system.sh.

[Script](./examples/update-system.sh)

Output Screenshot:

![image](https://github.com/AmalSunny992/bashscripts/assets/169422802/6c1a6ed4-0be4-49fe-8c26-6b5e56beead7)

## Create User
This script creates a new user and add them to a specified group.

**Usage**:
- Save the corrected script to a file (e.g., user.sh).
- Make the script executable: chmod +x user.sh.
- Run the script with sudo privileges: sudo ./user.sh.

[Script](./examples/user.sh)

Output Screenshot:

![image](https://github.com/AmalSunny992/bashscripts/assets/169422802/249fa6a8-3af4-49ee-98b6-e508a6e4e1e7)

## List all Installed Packages
This Script lists all installed packages on a Debian-based system 

**Usage**:
- Save the corrected script to a file (e.g., list-installed-packages.sh).
- Make the script executable: chmod +x list-installed-packages.sh.
- Run the script: ./list-installed-packages.sh.
  
[Script](./examples//list-installed-packages.sh)

Output Screenshot:

![image](https://github.com/AmalSunny992/bashscripts/assets/169422802/c40db3f5-3a9c-47ab-933d-ee51c58be734)

## List Large Files
This shell script finds and lists files in a specified directory that are larger than a specified size. 

**Usage** : To run the script, you would provide a directory and a size threshold. 

For example:

```bash
./script.sh /path/to/directory 100M
```
[Script](./examples//list-large-files.sh)

Output Screenshot:

![image](https://github.com/AmalSunny992/bashscripts/assets/169422802/7d21bed8-e0d6-4861-8703-d1f61331dc6c)


[<< Previous](../basic-bash-commands.md)     [Home](../README.md)

