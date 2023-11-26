---@meta

---Callbacks are functions that are called when a certain event occurs.
---You can use them to add custom functionality to your scripts.
---To see the list of available callbacks, see the callbacks page.
---@class callbacks
callbacks = {}

---@alias CallbackID
---| "Draw" # Called during the drawing stage every frame.
---| "DrawModel" # Called before drawing a model.
---| "DrawStaticProps" # Called every time static props are just about to be drawn on the screen.
---| "CreateMove" # Called every input update.
---| "FireGameEvent" # Called for selected game events.
---| "DispatchUserMessage" # Called on every user message received from server.
---| "SendStringCmd" # Called when console command is sent to server.
---| "PostPropUpdate" # Called after entity props get updated from the server.
---| "RenderView" # Called before the players view is rendered.
---| "PostRenderView" # Called after the players view is rendered.
---| "ServerCmdKeyValues" # Called when the client sends a keyvalues message to the server.
---| "OnFakeUncrate" # Called when a fake crate is to be uncrated.
---| "OnLobbyUpdated" # Called when a lobby is found or updated.
---| "SetRichPresence" # Called when the rich presence is updated.
---| "GCSendMessage" # Called when a message is being sent to the GC.
---| "GCRetrieveMessage" # Called when a message is being received from the GC.
---| "SendNetMsg" # Called when a message of type NetMessage is being sent to the server.
---| "Unload" # Called when script is getting unloaded.

---Register new callback.
---@param id CallbackID
---@param callback fun()
---@return boolean success
function callbacks.Register(id, callback) end

---Register new callback.\
---Throws an error if another callback unique is already existed, or unknown callback id
---@param id CallbackID
---@param unique string
---@param callback fun()
---@return boolean success
function callbacks.Register(id, unique, callback) end

---Unregister callback.\
---Throws an error on unknown callback id
---@param id CallbackID
---@param unique string
---@return boolean success
function callbacks.Unregister(id, unique) end

return callbacks
