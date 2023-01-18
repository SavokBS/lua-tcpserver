local cache = {}

function cache.run(client)
  local process = pcall(function()
      while true do
        local data = client:receive()
        end
      end)
    
end

return cache