---@diagnostic disable:missing-return

---@param r integer
---@param g integer
---@param b integer
---@param a integer
---@param ... string
function _G.printc(r, g, b, a, ...) end

---@param path string
---@return boolean success, string? error
function _G.LoadScript(path) end

---@param path string
---@return boolean success, string? error
function _G.UnloadScript(path) end

---@return string path
---@nodiscard
function _G.GetScriptName() end
