---@meta

---The NetChannel object is used to get information about the network channel. \
---[View Docs](https://lmaobox.net/lua/Lua_Classes/NetChannel/)
---@class NetChannel
local NetChannel = {}

---Returns the name of the channel.
---@return string
function NetChannel:GetName() end

---Returns the IP address of the server.
---@return string
function NetChannel:GetAddress() end

---Returns the time the client connected to the server.
---@return number
function NetChannel:GetConnectTime() end

---Returns the time since the last tick was received.
---@return number
function NetChannel:GetTimeSinceLastReceived() end

---Returns the latency of the specified flow.
---@param flow E_Flows
---@return number
function NetChannel:GetLatency(flow) end

---Returns the average latency of the specified flow.
---@param flow E_Flows
---@return number
function NetChannel:GetAvgLatency(flow) end

---Returns the average choke of the specified flow.
---@param flow E_Flows
---@return number
function NetChannel:GetAvgChoke(flow) end

---Returns the average loss of the specified flow.
---@param flow E_Flows
---@return number
function NetChannel:GetAvgLoss(flow) end

---Returns the average data of the specified flow.
---@param flow E_Flows
---@return number
function NetChannel:GetAvgData(flow) end

---Returns the current net time.
---@return number
function NetChannel:GetTime() end

---Returns the time when channel connected to the server.
---@return number
function NetChannel:GetTimeConnected() end

---Returns the size of the buffer.
---@return number
function NetChannel:GetBufferSize() end

---Returns the current data rate.
---@return number
function NetChannel:GetDataRate() end

---Returns true if the channel is loopback.
---@return boolean
function NetChannel:IsLoopback() end

---Returns true if the channel is timing out.
---@return boolean
function NetChannel:IsTimingOut() end

---Returns true if the channel is a demo playback.
---@return boolean
function NetChannel:IsPlayback() end

---Sets the data rate.
---@param rate number
function NetChannel:SetDataRate(rate) end

---Sets the channel timeout time.
---@param seconds number
function NetChannel:SetTimeout(seconds) end

---Sets the challenge number.
---@param challenge number
function NetChannel:SetChallengeNr(challenge) end

---Sends a network message, msg is of type NetMessage.
---@param msg NetMessage
function NetChannel:SendNetMsg(msg) end

---Sends data, data is of type BitBuffer.
---@param data BitBuffer
---@param reliable boolean
function NetChannel:SendData(data, reliable) end

---Gets the sequence data. Returns 3 values: outSequenceNr, inSequenceNr, outSequenceNrAck.
---@return integer outSequenceNr, integer inSequenceNr, integer outSequenceNrAck
function NetChannel:GetSequenceData() end

---Sets the sequence data.
---@param outSequenceNr integer
---@param inSequenceNr integer
---@param outSequenceNrAck integer
function NetChannel:SetSequenceData(outSequenceNr, inSequenceNr, outSequenceNrAck) end

---Sets the interpolation amount.
---@param interp number
function NetChannel:SetInterpolationAmount(interp) end

---Returns the challenge number.
---@return number
function NetChannel:GetChallengeNr() end
