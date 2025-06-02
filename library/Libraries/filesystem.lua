---@meta

---This library provides a simple interface to the filesystem.
---
---[View Docs](https://lmaobox.net/lua/Lua_Libraries/filesystem/)
---@class filesystem
filesystem = {}

---Creates a directory at the specified relative or absolute path. \
---Returns true if the directory was created, false if unsuccessful or already exists. \
---You are not allowed to call function outside of the game's root directory.
---@param filePath string
---@return boolean success, string fullPath
function filesystem.CreateDirectory(filePath) end

---Enumerates the files and directories in the specified directory. \
---The callback function receives the filename and attributes of each file or directory. \
---The path is relative to the game directory or absolute. \
---You are not allowed to call function outside of the game's root directory. \
---[See Example](../Examples/filesystem.md)
---@param filePath string
---@param callback fun(filename: string, attributes: integer)
function filesystem.EnumerateDirectory(filePath, callback) end

---Returns the attributes of the file at the specified path. \
---You are not allowed to call function outside of the game's root directory.
---@param filePath string
---@return E_FileAttribute|integer attributes
---@nodiscard
function filesystem.GetFileAttributes(filePath) end

---Sets the attributes of the file at the specified path. \
---You are not allowed to call function outside of the game's root directory.
---@param filePath string
---@param attributes integer
function filesystem.SetFileAttributes(filePath, attributes) end

---Returns the modification time of the file at the specified path.
---@param filePath string
---@return integer creationTime, integer lastAccessTime, integer lastWriteTime
---@nodiscard
function filesystem.GetFileTime(filePath) end

return filesystem
