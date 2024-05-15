---@meta

---Represents a material in source engine. \
---For more information about materials see the [Material](https://developer.valvesoftware.com/wiki/Material) page.
---@class Material
local Material = {}

---Returns material path.
---@return string
---@nodiscard
function Material:GetName() end

---Returns group the material is part of.
---@return string
---@nodiscard
function Material:GetTextureGroupName() end

---Modulate transparency of material.
---@param alpha number [0, 1] - increments by 0.1
function Material:AlphaModulate(alpha) end

---Modulate color of material. Colors are between 0 and 1.
---@param red integer
---@param green integer
---@param blue integer
function Material:ColorModulate(red, green, blue) end

---Change material var flag.
---@param flag E_MaterialFlag
---@param set any
function Material:SetMaterialVarFlag(flag, set) end

---Change material shader param.
---@param name string
---@param value integer|number|Vector3|string
function Material:SetShaderParam(name, value) end
