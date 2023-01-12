What is my name?

```lua
local me = entities.GetLocalPlayer()
local name = me:GetName()
print( name )
```

Find all players

```lua
local players = entities.FindByClass("CTFPlayer")

for i, player in ipairs(players) do
    print( player:GetName() )
end
```

Find all networked entities in the game

```lua
for i = 1, 2048 do -- index 1 is world entity
    local entity = entities.GetByIndex( i )
    if entity then
        print( i, entity:GetClass() )
    end
end
```
