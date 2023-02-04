---@meta

---@class callbacks
callbacks = {}

---@alias Callback
---| "Draw" # Called during the drawing stage every frame.
---| "CreateMove" # Called every input update.
---| "Unload" # Called when script is getting unloaded.
---| "DrawModel" # Called before drawing a model.
---| "FireGameEvent" # Called for selected game events.
---| "DispatchUserMessage" # Called on every user message received from server.
---| "SendStringCmd" # Called when console command is sent to server.
---| "PostPropUpdate" # Called after entity props get updated from the server.
---| "ServerCmdKeyValues" # Called when the client sends a keyvalues message to the server.

---Register new callback.\
---Throws an error if another callback unique is already existed, or unknown callback id
---@param id Callback
---@param callback fun(userdata: DrawModelContext|UserCmd|GameEvent|UserMessage|StringCmd|Entity|nil)
---@overload fun(id: Callback, unique: string, callback: fun(userdata: DrawModelContext|UserCmd|GameEvent|UserMessage|StringCmd|Entity|nil))
---@return boolean success
function callbacks.Register(id, callback) end

---Unregister callback.\
---Throws an error on unknown callback id
---@param id Callback
---@param unique string|""
---@return boolean success
function callbacks.Unregister(id, unique) end

return callbacks
