Print colored chat message

```lua
if client.ChatPrintf( "\x06[\x07FF1122LmaoBox\x06] \x04You died!" ) then
    print( "Chat message sent" )
end
```

Get Player Name

```lua
local me = entities.GetLocalPlayer()
local name = client.GetPlayerNameByIndex(me:GetIndex())
print( name )
```

Get Player SteamID3

```lua
local playerInfo = client.GetPlayerInfo(me:GetIndex())
local steamID = playerInfo.SteamID
print( steamID )
```
