Simple Bunny hop

```lua
local function doBunnyHop( cmd )
    local player = entities.GetLocalPlayer( );

    if (player ~= nil or not player:IsAlive()) then
    end

    if input.IsButtonDown( KEY_SPACE ) then

        local flags = player:GetPropInt( "m_fFlags" );

        if flags & FL_ONGROUND == 1 then
            cmd:SetButtons(cmd.buttons | IN_JUMP)
        else 
            cmd:SetButtons(cmd.buttons & (~IN_JUMP))
        end
    end
end

callbacks.Register("CreateMove", "myBhop", doBunnyHop)
```
