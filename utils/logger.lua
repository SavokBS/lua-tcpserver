local cache = {}

function cache.log(output)
  reset = "\27[0m" -- reset
  color = "\27[36m" -- cyan
  print(color .. "[LOG] " .. output .. reset)
end


function cache.warn(output)
  reset = "\27[0m" -- reset
  color = "\27[33m" -- yellow
  print(color .. "[WARN] " .. output .. reset)
end

function cache.err(output)
  reset = "\27[0m" -- reset
  color = "\27[31m" -- red
  print(color .. "[ERR] " .. output .. reset)
end

return cache
  