# Command Line Utility and Shell

## Project Overview

This project comprises implementations of fundamental file manipulation commands, including `cd`, `ls`, `cp`, `mv`, and `rm`. These commands are available both as standalone executables and integrated into a shell program that enables seamless command execution. Additionally, the project includes Bash scripts for testing these commands in both single-threaded and multithreaded modes.  
  
### Wildcard Usage in Command Line Paths  
  
In command line environments, wildcards serve as powerful tools for efficiently handling multiple files or directories with minimal input. Common wildcards include * (matches any sequence of characters) and ? (matches any single character). When used in paths, wildcards allow for flexible and dynamic file selection. For instance, to operate on all files with a specific extension in a directory, you can use \*.extension. Alternatively, if you want to target files with a certain pattern in their names, file_\* can capture them all. Incorporating wildcards enhances command line productivity by enabling concise and expressive path specifications, facilitating operations on multiple files or directories with a single command.

#### `cd_single`

Change the current working directory.

Usage: `./cd_single <directory>`

Description: The `cd_single` command allows you to change the current working directory. Simply provide the desired directory path as an argument, and the command will navigate to that directory.
- Use '~' to switch to home directory for current user.
Available Options:
*   `-L`: Follow symbolic links
*   `-P`: Do not follow symbolic links
*   `--help`: Print help message

#### `cp_single`

Copy files or directories.

Usage: `./cp_single [options] <source> <destination>`

Description: The `cp_single` command enables you to copy files or directories. It supports various options for customization:

*   `-R`: Recursive copy for directories.
*   `-n`: No Overwrite.
*   `-v`: Verbose; show files being copied.
*   `--help`: Print help message

#### `ls_single`

List directory contents.

Usage: `./ls_single [options] [<directory>]`

Description: The `ls_single` command lists the contents of a directory. It supports options for customization:

*   `-l`: Long format; display detailed information.
*   `-a`: All files; include hidden files.
*   `-R`: Show directories recursively.
*   `--help`: Print help message

#### `mv_single`

Move or rename files or directories.

Usage: `./mv_single <source> <destination>`

Description: The `mv_single` command allows you to move or rename files and directories. Simply provide the source and destination paths, and the command will perform the specified operation.

*   `-R`: Recursive remove for directories.
*   `-v`: Verbose mode.
*   `-n`: No Overwrite.
*   `--help`: Print help message

#### `rm_single`

Remove files or directories.

Usage: `./rm_single [options] <file/directory>`

Description: The `rm_single` command removes files or directories. It supports options for customization:

*   `-R`: Recursive remove for directories.
*   `-v`: Verbose mode.
*   `-i`: Interactive mode.
*   `--help`: Print help message

### Integrated Shell

Execute the integrated shell with the following command:

Usage: `./build/shell`

Description: The integrated shell provides a convenient environment where you can execute the aforementioned commands seamlessly. It allows for efficient file manipulation and navigation within a unified interface.

Feel free to explore and utilize these commands and the integrated shell for efficient file manipulation.

## Bash Scripts for Testing

To ensure the reliability and correctness of the implemented commands, the project provides Bash scripts for testing in both single-threaded and multithreaded modes. These scripts cover various scenarios to validate the functionality of each command.

## Test Results

### Single-Threaded Mode

- **cd:** All navigation tests passed successfully.
- **ls:** Correct display of directory contents verified.
- **cp:** Successful copying of files and directories confirmed.
- **mv:** Proper movement and renaming of files and directories validated.
- **rm:** Accurate removal of files and directories confirmed.

### Multithreaded Mode

- **cd:** Multithreaded navigation tests passed without conflicts.
- **ls:** Concurrent listing of directory contents demonstrated reliability.
- **cp:** Thread-safe copying of files and directories validated.
- **mv:** Concurrent movement and renaming of files and directories confirmed.
- **rm:** Thread-safe removal of files and directories successfully executed.

|             |             |             |             |             |
|-------------|-------------|-------------|-------------|-------------|
| Test Case 1 |             |             |             |             |
| Time        | cd          | ls          | cp          | mv          | rm          |
| Single      | -           | 0m0.790s    | 25m25.167s  | 0m0.044s    | 0m9.217s    |
| Multi       | -           | 0m0.005s    | 78m38.244s  | 0m4.092s    | 0m5.217s    |
|             |             |             |             |             |             |
| Test Case 2 |             |             |             |             |
| Time        | cd          | ls          | cp          | mv          | rm          |
| Single      | -           | 0m0.085s    | 37m10.698s  | 0m1.477s    | 0m26.319s   |
| Multi       | -           | 0m0.288s    | 68m58.919s  | 0m6.783s    | 0m37.402s   |
|             |             |             |             |             |             |
| Test Case 3 |             |             |             |             |
| Time        | cd          | ls          | cp          | mv          | rm          |
| Single      | -           | 0m11.743s   | 51m48.106s  | 0m1.446s    | 0m11.068s   |
| Multi       | -           | 0m0.477s    | 75m22.041s  | 0m2.385s    | 0m22.217s   |

## Requirements
Make sure you have **g++** installed on your system. You can check the version for g++ by using the command below:
```bash
g++ -v
```  
The G++ version must be 13.1.1 20230429 or above.

## Build commands

Shell would be generated as the executable './build/shell' or './build/shell_debug'.
Use the following command to compile an optimized version of the shell:
```bash
$ make shell_optimized
```
Use the following command to compile a debugger version of the shell:
```bash
$ make shell_debug
```     
  
Tools would be generated in the './build/' directory, with '_single' for single core version and '_multi' for multithreaded versions.
Use the following command to compile a optimized version of the tools:
```bash
$ make tools_single_optimized
```
Use the following command to compile a debugger version of the tools:
```bash
$ make tools_single_debug
```  

## Usage
Once you have compiled the program, you can run the optimized version with the following command:
```bash
$ ./generated_executable
```
To use the debug version with GDB, you can use the following command:
```bash
$ gdb generated_executable.out
```  

<!-- 
NOTE: 
Parts of this project (including this README file) were generated using ChatGPT [https://chat.openai.com/] 
Most such parts have a label indicating the same.
-->
