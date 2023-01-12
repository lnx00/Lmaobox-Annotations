Prevent user from using 'status'

```lua
local function onStringCmd( stringCmd )

    if stringCmd:Get() == "status" then
        stringCmd:Set( "" )
	print("no status for you")
    end
end

callbacks.Register( "SendStringCmd", "hook", onStringCmd )
```
