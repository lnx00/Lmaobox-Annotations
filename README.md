# Lmaobox Lua Annotations

The Lmaobox Lua Annotations allow you to get static code analysis, type checking and autocompletion for the Lmaobox Lua API in your favorite IDE. It is based on the [Lua Language Server](https://github.com/luals/lua-language-server) and [Lmaobox Lua API](https://lmaobox.net/lua/).

> _Lmaobox development just got a whole lot better_ 🧠 - LewdDeveloper

## Installation guide

### Prerequisites

1. Install the [LUA Extenstion](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) for Visual Studio Code
2. Clone or download and extract this repository
3. Continue with one of the following installation methods:

### Enable annotations locally (Recommended)

4. Create a `.luarc.json` file in the root of your Lua project ([View Template](https://gist.github.com/lnx00/cdc17a6b6c4de799d4dbf2745ad19ba9))
5. Add the `library` folder inside this repository (not the root) to the `workspace.library` field, using forward slashes.

### Enable annotations globally

4. Run Visual Studio Code and open the settings (File -> Preferences -> Settings)
5. On the left side, navigate to the Lua extension settings (Extensions -> Lua)
6. Find "Workspace: User Third Party" (under Lua extension settings) and click on "Add Item"
7. Select the `library` folder inside this repository (using forward slashes)

You should now see autocomplete suggestions for all the functions, methods, types, and libraries of the Lmaobox API. It should look like this:

![Preview](.github/images/AC_Preview.png)

## Updating

To update the annotations, simply pull the latest changes from this repo and restart your IDE.\
If you've manually downloaded the repo, you can also just download the latest version and replace the old folder.

## How to use annotations

For more information refer to the official [Lua Language Server Wiki](https://luals.github.io/).
It has comprehensive documentation on how to use the annotations.

## Console commands

| Command                    | Description                              |
| -------------------------- | ---------------------------------------- |
| **lua_tc**                 | Toggle lua evaluation mode               |
| **lua_load** _{file path}_ | Load a lua script in localappdata folder |
| **lua_exec** _{code}_      | Evaluate lua code                        |
