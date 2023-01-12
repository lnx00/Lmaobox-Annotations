Example usage

```lua
local function onCreateMove( cmd )
    local me = entities.GetLocalPlayer()
    if (me ~= nil) then
        local wpn = me:GetPropEntity( "m_hActiveWeapon" )
        if (wpn  ~= nil) then
            local wdt = wpn:GetWeaponData()
            print( "timeReload: " .. tostring(wdt.timeReload) )
        end
    end
end
callbacks.Register("CreateMove", onCreateMove)
```
