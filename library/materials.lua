---@meta

---@class materials
materials = {}

---Find material by name.
---@param name string
---@return Material
---@nodiscard
function materials.Find(name) end

---Enumerate all loaded materials.
---@param callback fun(material: Material)
function materials.Enumerate(callback) end

---Create custom material.
---
---To create custom materials follow the [Valve Material Type](https://developer.valvesoftware.com/wiki/Material) syntax.
---@param name string
---@param vmt string
---@param type string
---@return Material
---@nodiscard
function materials.Create(name, vmt, type) end

return materials
