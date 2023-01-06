# Lmaobox Lua Annotations

Based on 22 Nov 2022 Update

> ***Lmaobox development just got a whole lot better*** 🧠 - LewdDeveloper

## Installation guide

### Visual Studio Code

1. Install the [LUA Extenstion](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) for VSCode
2. Clone or download and extract this repo
3. Open VSCode and click on File -> Preferences -> Settings
4. On the left side, click Extensions -> Lua
5. Find **Workspace: Library** and click on **Add Item**
6. Select the **library** folder of this repo

---

If you managed to setup correctly, confetti for you 🎉

![1670231242609](image/readme/1670231242609.png)

### Learn how to use lua-language-server

[https://github.com/sumneko/lua-language-server/wiki/Settings](https://github.com/sumneko/lua-language-server/wiki/Settings)

## Adding more annotations

To know more about annotations, refer to [this wiki](https://github.com/sumneko/lua-language-server/wiki/Annotations)

## Console commands

| Command           | What it do[🤔](https://emojipedia.org/thinking-face/) |
| ----------------- | -------------------------------------------------- |
| lua_tc            | Toggle lua evaluation mode                         |
| lua_load [[path]] | Load a lua script in localappdata folder           |
| lua_exec [[code]] | evaluate lua code                                 |
| lua               | same as lua_exec                                   |

## TODO

- [ ] Call every possible function/methods and inspect it's return value.
- [ ] Add annotation tag for function that has meaningful/purposeful return value: **@nodiscard**
- [X] Find someone rewriting readme
- [ ] Find a dedicated maintainer.
