Create a directory inside the 'Team Fortress 2' directory

```lua
filesystem.CreateDirectory( [[myContent]] )
```

Enumerate every file in the tf/ directory

```lua
filesystem.EnumerateDirectory( [[tf/*]] , function( filename, attributes )
    print( filename, attributes )
end )
```
