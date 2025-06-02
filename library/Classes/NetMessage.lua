---@meta

---The NetMessage class represents a network message. \
---It is used to read and write data to the network stream.
---
---[View Docs](https://lmaobox.net/lua/Lua_Classes/NetMessage/)
---@class NetMessage
local NetMessage = {}

---Returns the message group.
---@return integer
function NetMessage:GetGroup() end

---Returns the NetChannel object that the message belongs to.
---@return NetChannel
function NetMessage:GetNetChannel() end

---Returns true if the message is reliable.
---@return boolean
function NetMessage:IsReliable() end

---Sets the message to be reliable or unreliable.
---@param reliable boolean
function NetMessage:SetReliable(reliable) end

---Returns the message type.
---@return integer
function NetMessage:GetType() end

---Returns the message name.
---@return string
function NetMessage:GetName() end

---Returns the message as a human readable string with the contents of the message.
---@return string
function NetMessage:ToString() end

---Writes the message content to a BitBuffer, useful for reading its variables via the bit buffer. \
---Make sure that current bit position is correct and that you do not overflow the buffer.
---@param buffer BitBuffer
function NetMessage:WriteToBitBuffer(buffer) end

---Reads the message content from a BitBuffer and applies it to the message. \
---If done in SendNetMsg callback, the sent message will be changed. \
---Make sure that current bit position is correct.
---@param buffer BitBuffer
function NetMessage:ReadFromBitBuffer(buffer) end
