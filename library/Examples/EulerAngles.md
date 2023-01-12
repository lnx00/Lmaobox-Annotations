Getting view angles

```lua
local me = entities.GetLocalPlayer()
local viewAngles = me:GetPropVector("tfnonlocaldata", "m_angEyeAngles[0]")
local myAngles = EulerAngles( 30, 60, 0 )
local pitch, yaw, roll = myAngles:Unpack()
```
