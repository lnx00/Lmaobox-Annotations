---@meta

---This library can be used for interacting with the warp exploit feature of TF2. How it works:
--
---You can charge up ticks to later on send to server in a batch, which will execute them all at once, it behaves like a small speedhack, a warp.
--
---Warping results in a small dash in the direction you are running in.
--
---Warping while shooting results in weapons speeding up their reload times -> some weapons can shoot twice - a double tap.
---@class warp
warp = {}

---Returns the amount of charged warp ticks.
---@return integer
---@nodiscard
function warp.GetChargedTicks() end

---Returns true if the user is currently warping. Since the period of warping is super short, this is only really useful in CreateMove callbacks where you can use it to do your logic.
---@return boolean
---@nodiscard
function warp.IsWarping() end

---Whether we can warp or not. Does not guarantee a full charge or a double tap.
---@return boolean
---@nodiscard
function warp.CanWarp() end

---Extension of `CanWarp` with additional checks. When this is true, you can guarentee a weapon will double tap.
---@param weapon Entity
---@return boolean
---@nodiscard
function warp.CanDoubleTap(weapon) end

---Triggers a warp.
function warp.TriggerWarp() end

---Triggers a warp with double tap.
function warp.TriggerDoubleTap() end

---Triggers a charge of warp ticks.
function warp.TriggerCharge() end

return warp