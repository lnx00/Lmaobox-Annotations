local cachedEntity = {}
local font = draw.CreateFont("Tahoma", 21, 400)

callbacks.Register("Draw", function()
    for idx, ent in pairs(cachedEntity) do
        if ent:IsValid() then
            draw.Color(255, 255, 255, 255)
            draw.SetFont(font)
            local s = client.WorldToScreen(ent:GetAbsOrigin())
            if s then
                draw.Text(s[1], s[2], "Locker")
            end
        else
            cachedEntity[idx] = nil
        end
    end
end)

callbacks.Register("DrawModel", function(ctx) ---@param ctx DrawModelContext
    local modelName = ctx:GetModelName()
    if modelName == 'models/props_gameplay/resupply_locker.mdl' then
        local ent = ctx:GetEntity()
        local idx = ent:GetIndex()
        if not cachedEntity[idx] then
            cachedEntity[idx] = ent
        end
    end
end)
