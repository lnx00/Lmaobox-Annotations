---@meta

---@class filesystem
filesystem = {}

---Creates a directory at the specified relative or absolute path. Returns true if the directory was created, false if unsuccessful.
---
---You are not allowed to call function outside of the game's root directory.
---@param filePath string
---@return boolean success, string|nil error
function filesystem.CreateDirectory(filePath) end

---Enumerates the files and directories in the specified directory. The callback function receives the filename and attributes of each file or directory. The path is relative to the game directory or absolute. 
---
---You are not allowed to call function outside of the game's root directory.
---@param filePath string
---@param callback fun(filename: string, attributes: integer)
---[See Example](../Examples/working-with-filesystem.lua)
function filesystem.EnumerateDirectory(filePath, callback) end

---Returns the attributes of the file at the specified path.
---
---You are not allowed to call function outside of the game's root directory.
---@param filePath string
---@return integer attributes
---@nodiscard
function filesystem.GetFileAttributes(filePath) end

---Sets the attributes of the file at the specified path.
---
---You are not allowed to call function outside of the game's root directory.
---@param filePath string
---@param attributes integer
function filesystem.SetFileAttributes(filePath, attributes) end

return filesystem