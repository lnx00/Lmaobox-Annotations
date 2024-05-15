---@meta

---The PartyMemberActivity class is used to provide information about a party member.
---@class PartyMemberActivity
PartyMemberActivity = {}

---Returns the lobby ID of the party member. \
---This can be used to find out whether the party member is currently in a matchmade game.
---@return number id
---@nodiscard
function PartyMemberActivity:GetLobbyID() end

---Returns whether the party member is currently online.
---@return boolean
---@nodiscard
function PartyMemberActivity:IsOnline() end

---Returns whether the party member is currently blocked from joining a matchmade game.
---@return boolean
---@nodiscard
function PartyMemberActivity:IsMultiqueueBlocked() end

---Returns the client version of the party member.
---@return number version
---@nodiscard
function PartyMemberActivity:GetClientVersion() end

return PartyMemberActivity
