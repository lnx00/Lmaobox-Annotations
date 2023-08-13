---@meta

---The clientstate library is used to get information about the internal client state.
---@class clientstate
clientstate = {}

---Requests a full update from the server. This can lag the game a bit and should be used sparingly. It can even cause the game to crash if used incorrectly.
function clientstate.ForceFullUpdate() end

---Returns the current client signon state. This is useful for determining if the client is fully connected to the server.
---@return ESignonState
---@nodiscard
function clientstate.GetClientSignonState() end

---Returns last valid received snapshot (server) tick
---@return integer
---@nodiscard
function clientstate.GetDeltaTick() end

---Returns the last outgoing command number.
---@return integer
---@nodiscard
function clientstate.GetLastOutgoingCommand() end

---Returns the number of commands the client is currently choking.
---@return integer
---@nodiscard
function clientstate.GetChokedCommands() end

---Returns the last command acknowledged by the server.
---@return integer
---@nodiscard
function clientstate.GetLastCommandAck() end

---Returns the time the client connected to the server.
---@return number?
---@nodiscard
function clientstate.GetConnectTime() end

---Returns the time since the last tick was received.
---@return number?
---@nodiscard
function clientstate.GetTimeSinceLastReceived() end

---Returns the incoming latency.
---@return number?
---@nodiscard
function clientstate.GetLatencyIn() end

---Returns the outgoing latency.
---@return number?
---@nodiscard
function clientstate.GetLatencyOut() end

return clientstate
