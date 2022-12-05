---@meta

---@class DrawModelContext
---[Official Documentation](https://lmaobox.net/lua/Lua_Classes/DrawModelContext)
DrawModelContext = {}

---Returns the name of the model.
---@return string model
---@nodiscard
function DrawModelContext:GetModelName() end

---Returns the entity linked to the drawn model, can be nil.
---@return Entity|nil
---@nodiscard
function DrawModelContext:GetEntity() end

---Replace material used to draw the model.
---@param mat Material
function DrawModelContext:ForcedMaterialOverride(mat) end

---Redraws the model. Can be used to achieve various effects with different materials.
function DrawModelContext:DrawExtraPass() end

---Sets the color modulation of the model via StudioRender.
---@param r integer [0, 255]
---@param g integer [0, 255]
---@param b integer [0, 255]
---@param a integer [0, 255]
function DrawModelContext:StudioSetColorModulation(r, g, b, a) end

--Sets the alpha modulation of the model via StudioRender.
---@param alpha number [0, 1]
function DrawModelContext:StudioSetAlphaModulation(alpha) end

---Sets the depth range of the scene.
---
---Useful for drawing models in the background or other various effects.
---
---Should be reset to the default (0,1) when done.
---@param min number [0, 1]
---@param max number [0, 1]
function DrawModelContext:DepthRange(min, max) end

---Suppresses the engine lighting when drawing the model.
---@param suppress boolean
function DrawModelContext:SuppressEngineLighting( suppress ) end

return DrawModelContext
