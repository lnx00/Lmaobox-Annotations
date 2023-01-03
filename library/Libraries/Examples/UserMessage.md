Print chat messages from players

```lua
local function myCoolMessageHook(msg)
    if msg:GetID() == SayText2 then 
        msg:SetCurBit(8)-- skip 2 bytes of padding

        local chatType = msg:ReadString(256)
        local playerName = msg:ReadString(256)
        local message = msg:ReadString(256)

        print("Player " .. playerName .. " said " .. message)
    end
end

callbacks.Register("DispatchUserMessage", myCoolMessageHook)
```
