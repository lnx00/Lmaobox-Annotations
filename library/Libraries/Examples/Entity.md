Calculate needed crit hack damage

```lua
local myfont = draw.CreateFont( "Verdana", 16, 800 )

callbacks.Register( "Draw", function ()
    draw.Color(255, 255, 255, 255)
    draw.SetFont( myfont )

    local player = entities.GetLocalPlayer()
    local wpn = player:GetPropEntity("m_hActiveWeapon")

    if wpn ~= nil then
        local critChance = wpn:GetCritChance()
        local dmgStats = wpn:GetWeaponDamageStats()
        local totalDmg = dmgStats["total"]
        local criticalDmg = dmgStats["critical"]

        -- (the + 0.1 is always added to the comparsion)
        local cmpCritChance = critChance + 0.1

        -- If we are allowed to crit
        if cmpCritChance > wpn:CalcObservedCritChance() then
            draw.Text( 200, 510, "We can crit just fine!")
        else --Figure out how much damage we need
            local requiredTotalDamage = (criticalDmg * (2.0 * cmpCritChance + 1.0)) / cmpCritChance / 3.0
            local requiredDamage = requiredTotalDamage - totalDmg

            draw.Text( 200, 510, "Damage needed to crit: " .. math.floor(requiredDamage))
        end
    end
end )
```

Basic player ESP

```lua
local myfont = draw.CreateFont( "Verdana", 16, 800 )

local function doDraw()
    if engine.Con_IsVisible() or engine.IsGameUIVisible() then
        return
    end

    local players = entities.FindByClass("CTFPlayer")

    for i, p in ipairs( players ) do
        if p:IsAlive() and not p:IsDormant() then

            local screenPos = client.WorldToScreen( p:GetAbsOrigin() )
            if screenPos ~= nil then
                draw.SetFont( myfont )
                draw.Color( 255, 255, 255, 255 )
                draw.Text( screenPos[1], screenPos[2], p:GetName() )
            end
        end
    end
end

callbacks.Register("Draw", "mydraw", doDraw) 
```

Draw local player hitboxes

```lua
callbacks.Register( "Draw", function ()
    local player = entities.GetLocalPlayer()
    local hitboxes = player:GetHitboxes()

    for i = 1, #hitboxes do
        local hitbox = hitboxes[i]
        local min = hitbox[1]
        local max = hitbox[2]

        -- to screen space
        min = client.WorldToScreen( min )
        max = client.WorldToScreen( max )

        if (min ~= nil and max ~= nil) then
            -- draw hitbox
            draw.Color(255, 255, 255, 255)
            draw.Line( min[1], min[2], max[1], min[2] )
            draw.Line( max[1], min[2], max[1], max[2] )
            draw.Line( max[1], max[2], min[1], max[2] )
            draw.Line( min[1], max[2], min[1], min[2] )
        end
    end
end )
```

Clip size attribute on player

```lua
local me = entities.GetLocalPlayer()

local myClipSizeMultiplier = me:AttributeHookFloat( "mult_clipsize" )
```

Clip size attribute on weapon

```lua
local me = entities.GetLocalPlayer()

local primaryWeapon = me:GetEntityForLoadoutSlot( LOADOUT_POSITION_PRIMARY )
local weaponClipSizeMultiplier = primaryWeapon:AttributeHookFloat( "mult_clipsize" )
```

Is player taunting

```lua
local me = entities.GetLocalPlayer()

local isTaunting = me:InCond( TFCond_Taunting )
```

Get rage meter value

```lua
local me = entities.GetLocalPlayer()

local rageMeter = me:GetPropFloat( "m_flRageMeter" )
```
