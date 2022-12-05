---@meta

---@class filesystem
filesystem = {}

---Creates a directory at the specified relative or absolute path. Returns true if the directory was created, false if unsuccessful.
---@param path string
---@return boolean success, string|nil error
function filesystem.CreateDirectory(path) end

---Enumerates the files and directories in the specified directory. The callback function receives the filename and attributes of each file or directory. The path is relative to the game directory or absolute. You are not allowed to enumerate outside of the game directory.
---@param path string
---@param callback fun(filename: string, attributes: integer)
function filesystem.EnumerateDirectory(path, callback) end

---Returns the attributes of the file at the specified path.
---@param path string
---@return integer attributes
---@nodiscard
function filesystem.GetFileAttributes(path) end

---Sets the attributes of the file at the specified path.
---@param path string
---@param attributes integer
function filesystem.SetFileAttributes(path, attributes) end

return filesystem