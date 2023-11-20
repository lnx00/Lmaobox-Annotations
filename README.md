# Lmaobox Lua Annotations

The Lmaobox Lua Annotations allow you to get static code analysis, type checking and autocompletion for the Lmaobox Lua API in your favorite IDE. It is based on the [Lua Language Server](https://github.com/luals/lua-language-server) and [Lmaobox Lua API](https://lmaobox.net/lua/).

> *Lmaobox development just got a whole lot better* 🧠 - LewdDeveloper

## Installation guide

### Visual Studio Code

1. Install the [LUA Extenstion](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) for VSCode
2. Clone or download and extract this repo
3. Open VSCode and click on File -> Preferences -> Settings
4. On the left side, click Extensions -> Lua
5. Find **Workspace: Library** and click on **Add Item**
6. Select the **library** folder of this repo

---

You should now get autocomplete for all the functions, methods and libraries of the Lmaobox API.
It should look like this:

![Preview](.github/images/AC_Preview.png)

## Updating

To update the annotations, simply pull the latest changes from this repo and restart your IDE.\
If you've manually downloaded the repo, you can also just download the latest version and replace the old one.

## How to use annotations

For more information refer to the official  [Lua Language Server Wiki](https://luals.github.io/).
It has comprehensive documentation on how to use the annotations.

## Console commands

| Command | Description |
| - | - |
| **lua_tc** | Toggle lua evaluation mode |
| **lua_load** *{file path}* | Load a lua script in localappdata folder |
| **lua_exec** *{code}* | Evaluate lua code |
