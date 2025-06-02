---@meta

---The Texture object is used to interact with textures loaded from files or created dynamically.
---
---[View Docs](https://lmaobox.net/lua/Lua_Classes/Texture/)
---@class Texture
local Texture = {}

---Returns the name of the texture.
---@return string
---@nodiscard
function Texture:GetName() end

---Returns the actual height of the texture in pixels.
---@return integer
---@nodiscard
function Texture:GetActualHeight() end

---Returns the actual width of the texture in pixels.
---@return integer
---@nodiscard
function Texture:GetActualWidth() end
