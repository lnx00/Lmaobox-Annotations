---@meta

---The BitBuffer object is used to read and write data that is usually sent over the network, compressed into a bitstream.
---@class BitBuffer
local BitBuffer = {}

---Creates a new BitBuffer object with an empty buffer.
---You can write to it using methods below or have some other functions write to it for you, such as NetMessage::WriteToBitBuffer.
---@return BitBuffer
function _G.BitBuffer() end

--[[ Reading ]]

---Returns the length of the buffer in bits
---@return integer bits
function BitBuffer:GetDataBitsLength() end

---Returns the length of the buffer in bytes
---@return integer bytes
function BitBuffer:GetDataBytesLength() end

---Resets the read position to the beginning of the buffer.
---This is useful if you want to read the buffer multiple times, but it is not necessary.
function BitBuffer:Reset() end

---Reads one byte from the buffer.
---Returns the byte read as first return value, and current bit position as second return value.
---@return integer byte, integer currentPos
function BitBuffer:ReadByte() end

---Reads a single bit from the buffer.
---Returns the bit read as first return value, and current bit position as second return value.
---@return integer bit, integer currentPos

---Reads 4 bytes from the buffer and returns it as a float.
---Default bitLength is 32 (4 bytes). For short, use 16, for long, use 64.
---Returns the float read as first return value, and current bit position as second return value.
---@param bitLength integer?
---@return number float, integer currentPos
function BitBuffer:ReadFloat(bitLength) end

---Reads 4 bytes from the buffer and returns it as an integer.
---Default bitLength is 32 (4 bytes). For short, use 16, for long, use 64.
---Returns the integer read as first return value, and current bit position as second return value.
---@param bitLength integer?
---@return integer int, integer currentPos
function BitBuffer:ReadInt(bitLength) end

---Reads a string from the buffer.
---You must specify valid maxlen. The string will be truncated if it is longer than maxlen.
---Returns the string read as first return value, and current bit position as second return value.
---@param maxlen integer
---@return string str, integer currentPos
function BitBuffer:ReadString(maxlen) end

---Returns the current bit position in the buffer.
---@return integer currentPos
function BitBuffer:GetCurBit() end

--[[ Writing ]]

---Sets the current bit position in the buffer.
---@param pos integer
function BitBuffer:SetCurBit(pos) end

---Writes a single bit to the buffer.
---@param bit integer
function BitBuffer:WriteBit(bit) end

---Writes a single byte to the buffer.
---@param byte integer
function BitBuffer:WriteByte(byte) end

---Writes given string to the buffer.
---@param str string
function BitBuffer:WriteString(str) end

---Writes an integer to the buffer.
---Default bitLength is 32 (4 bytes). For short, use 16, for long, use 64.
---@param int integer
---@param bitLength integer?
function BitBuffer:WriteInt(int, bitLength) end

---Writes a float to the buffer.
---Default bitLength is 32 (4 bytes). For short, use 16, for long, use 64.
---@param float number
---@param bitLength integer?
function BitBuffer:WriteFloat(float, bitLength) end
