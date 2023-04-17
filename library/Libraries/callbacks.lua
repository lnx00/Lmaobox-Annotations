---@meta

---@class callbacks
callbacks = {}

---@alias CallbackID
---| "Draw" # Called during the drawing stage every frame.
---| "DrawModel" # Called before drawing a model.
---| "CreateMove" # Called every input update.
---| "FireGameEvent" # Called for selected game events.
---| "DispatchUserMessage" # Called on every user message received from server.
---| "SendStringCmd" # Called when console command is sent to server.
---| "PostPropUpdate" # Called after entity props get updated from the server.
---| "ServerCmdKeyValues" # Called when the client sends a keyvalues message to the server.
---| "OnFakeUncrate" # Called when a fake crate is to be uncrated.
---| "OnLobbyUpdated" # Called when a lobby is found or updated.
---| "Unload" # Called when script is getting unloaded.

---Register new callback.\
---Throws an error if another callback unique is already existed, or unknown callback id
---@param id CallbackID
---@param callback fun(userdata: DrawModelContext|UserCmd|GameEvent|UserMessage|StringCmd|Entity|nil)
---@overload fun(id: CallbackID, unique: string, callback: fun(userdata: DrawModelContext|UserCmd|GameEvent|UserMessage|StringCmd|Entity|nil))
---@return boolean success
function callbacks.Register(id, callback) end

---Unregister callback.\
---Throws an error on unknown callback id
---@param id CallbackID
---@param unique string|""
---@return boolean success
function callbacks.Unregister(id, unique) end

return callbacks
