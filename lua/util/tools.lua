local M = {}

M.merge_arrays = function(a1, a2)
  if not a1 and not a2 then
    return {}
  elseif not a1 then
    return a2
  elseif not a2 then
    return a1
  end

  local result = {}
  for i = 1, #a1 do
    table.insert(result, a1[i])
  end
  for i = 1, #a2 do
    table.insert(result, a2[i])
  end
  return result
end

M.merge_tables = function(t1, t2)
  for k, v in pairs(t2) do
    t1[k] = v
  end
  return t1
end

return M
