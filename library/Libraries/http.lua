---@meta

---@class http
http = {}

---Get data from a URL.
--
---To make this call non-blocking specify a callback function as second argument.
---@deprecated
---@param url string
---@return string
---@nodiscard
---@overload fun(url: string, callback: fun(data: string)): nil
function http.Get(url) end

return http
