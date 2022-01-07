# Luav change log

## Upcoming release

## 1.1

### 1.1.7

* Rewrote some documentation

### 1.1.6

* Allowed for other sudo-like commands in "set" command
* Fixed echo commands piping stderr to stdout
* Rewrote some documentation

### 1.1.5

* Added unit tests
* Added logo for the luav project
* Added "version" command for showing current version
* Added "test" command for running unit tests
* Improved CFLAGS injection in Lua Makefiles

### 1.1.4

* Added "doc" command for displaying Lua documentation

### 1.1.3

* Moved complex awk scripts to libexec/awk
* Simplified update index awk script (only awk!)
* Simplified help message extractor awk script
* Added tgts command for extracting targets from Makefiles

### 1.1.2

* Removed main Makefile

### 1.1.1

* Added completions for 'rm' and 'comp' commands

### 1.1.0

* Extracts from www.lua.org/ftp information about all available Lua versions
* Caches tabular file with all available Lua versions to be processed by awk
* Checks for MD5 and SHA1 summations of tar.gz files
* Added "info" command for displaying index
* Added "update" command for updating index
* Added "rm" command for removing Lua versions
* Removed usage of the "readlink" command for portability

## 1.0

* First public release
