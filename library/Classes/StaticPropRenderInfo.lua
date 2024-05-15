---@meta

---Represents the context of a static prop being drawn.
---@class StaticPropRenderInfo
StaticPropRenderInfo = {}

---Replace material used to draw the models. \
---Material can be found or created via `materials` API. \
---Using `nil` as the material will use the original material.
---@param mat Material?
function StaticPropRenderInfo:ForcedMaterialOverride(mat) end

---Redraws the models. Can be used to achieve various effects with different materials.
function StaticPropRenderInfo:DrawExtraPass() end

---Sets the color modulation of the models via StudioRender.
---@param r integer
---@param g integer
---@param b integer
function StudioSetColorModulation(r, g, b) end

---Sets the alpha modulation of the models via StudioRender.
---@param alpha integer
function StudioSetAlphaModulation(alpha) end

return StaticPropRenderInfo
