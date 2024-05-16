---@meta

---The models library provides a way to get information about models. \
---When inputting the model:Model parameter, it must be of type Model. \
---[View Docs](https://lmaobox.net/lua/Lua_Libraries/models/)
---@class models
models = {}

---Returns a Model object by model index.
---@param modelIndex integer
---@return Model
---@nodiscard
function models.GetModel(modelIndex) end

---Returns a model index as an integer by a given model name.
---@param modelName string
---@return integer
---@nodiscard
function models.GetModelIndex(modelName) end

---Returns a StudioModelHeader object by model.
---@param model Model
---@return StudioModelHeader
---@nodiscard
function models.GetStudioModel(model) end

---Returns a model name by string.
---@param model Model
---@return string
---@nodiscard
function models.GetModelName(model) end

---Returns a table of Material objects by model.
---@param model Model
---@return Material[]
---@nodiscard
function models.GetModelMaterials(model) end

---Returns two Vector3 objects, mins and maxs, by model string, representing render bounds.
---@param model Model
---@return Vector3, Vector3
---@nodiscard
function models.GetModelRenderBounds(model) end

---Returns two Vector3 objects, mins and maxs, by model string representing model space bounds.
---@param model Model
---@return Vector3, Vector3
---@nodiscard
function models.GetModelBounds(model) end

return models
