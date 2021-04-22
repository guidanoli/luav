# Lua Version Selector

This toolkit helps manage different versions of Lua.

## Dependencies

bash, curl, sudo, tar and UNIX commands

## Setup

1. Clone this repository anywhere
2. Add the `bin` folder to your `PATH` variable
3. Run `eval "$(luav init)"` for autocomplete support

## Usage

```sh
$ luav help
Usage: luav <command> [<args>]
       luav help <command>
       luav help

Available commands:
     all  Lists all available versions of Lua
    cmds  Lists all available commands
    comp  Prints completion options for a command
     doc  Read the documentation of a specific Lua Version
     get  Download a specific version of Lua
    help  Prints information about commands
    info  Lists information about all available versions of Lua
    init  Prints luav initialization code
    list  Lists all downloaded versions of Lua
    make  Run make for a specific version of Lua
      rm  Remove Lua version
     set  Sets a Lua version as default
    tgts  Lists all main targets of a specific version of Lua
   unset  Unsets a Lua version as default
  update  Update index
```

## Example

```sh
$ luav get 5.4.2                  # Downloads source code from lua.org
$ CFLAGS=-fPIC luav make 5.4.2    # Compiles source code with -fPIC
$ luav set 5.4.2                  # Installs Lua 5.4.2
```
