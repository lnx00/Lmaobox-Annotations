---@meta

---The playerlist library provides a way to retrieve values from, and customize the playerlist.
---@class playerlist
playerlist = {}

---Returns the priority of the player.
---@param player Entity
---@return integer
---@nodiscard
function playerlist.GetPriority(player) end

---Returns the priority of the player by user ID.
---@param userID integer
---@return integer
---@nodiscard
function playerlist.GetPriority(userID) end

---Returns the priority of the player by Steam ID.
---@param steamID string
---@return integer
---@nodiscard
function playerlist.GetPriority(steamID) end

---Sets the priority of the player.
---@param player Entity
---@param priority integer
function playerlist.SetPriority(player, priority) end

---Sets the priority of the player by user ID.
---@param userID integer
---@param priority integer
function playerlist.SetPriority(userID, priority) end

---Sets the priority of the player by Steam ID.
---@param steamID string
---@param priority integer
function playerlist.SetPriority(steamID, priority) end

---Returns the color of the player.
---@param player Entity
---@return integer
---@nodiscard
function playerlist.GetColor(player) end

---Returns the color of the player by user ID.
---@param userID integer
---@return integer
---@nodiscard
function playerlist.GetColor(userID) end

---Returns the color of the player by Steam ID.
---@param steamID string
---@return integer
---@nodiscard
function playerlist.GetColor(steamID) end

---Sets the color of the player.
---@param player Entity
---@param color integer
function playerlist.SetColor(player, color) end

---Sets the color of the player by user ID.
---@param userID integer
---@param color integer
function playerlist.SetColor(userID, color) end

---Sets the color of the player by Steam ID.
---@param steamID string
---@param color integer
function playerlist.SetColor(steamID, color) end

return playerlist