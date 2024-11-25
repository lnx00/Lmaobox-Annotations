---@meta

---Represents the context in which a model is being drawn in the DrawModel callback. \
---[View Docs](https://lmaobox.net/lua/Lua_Classes/DrawModelContext/)
---@class DrawModelContext
local DrawModelContext = {}

---Returns the entity linked to the drawn model, can be `nil`.
---@return Entity?
---@nodiscard
function DrawModelContext:GetEntity() end

---Returns the name of the model.
---@return string
---@nodiscard
function DrawModelContext:GetModelName() end

---Replace material used to draw the model.
---@param mat Material
function DrawModelContext:ForcedMaterialOverride(mat) end

---Redraws the model. Can be used to achieve various effects with different materials.
function DrawModelContext:DrawExtraPass() end

---Sets the color modulation of the model via StudioRender.
---@param r integer
---@param g integer
---@param b integer
---@param a integer
function DrawModelContext:StudioSetColorModulation(r, g, b, a) end

--Sets the alpha modulation of the model via StudioRender.
---@param alpha number [0, 1]
function DrawModelContext:StudioSetAlphaModulation(alpha) end

---Modulate via renderview for non studio models.
---@param r integer
---@param g integer
---@param b integer
function DrawModelContext:SetColorModulation(r, g, b) end

---;Modulate via renderview, for non studio models.
---@param alpha number [0, 1]
function DrawModelContext:SetAlphaModulation(alpha) end

---Sets the depth range of the scene. \
---Useful for drawing models in the background or other various effects. \
---Should be reset to the default [0, 1] when done.
---@param min number [0, 1]
---@param max number [0, 1]
function DrawModelContext:DepthRange(min, max) end

---Suppresses the engine lighting when drawing the model.
---@param suppress boolean
function DrawModelContext:SuppressEngineLighting(suppress) end

---Render model in place with current overrides.
function DrawModelContext:Execute() end
