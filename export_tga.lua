
local function to_tgacolor(color)
  return {
    tonumber(color:sub(1,2),16),
    tonumber(color:sub(3,4),16),
    tonumber(color:sub(5,6),16),
  }
end

local function to_tgapixels(data, res)
  local pixels = {}
	for y = 0, res - 1 do
    pixels[y+1] = {}
		local xs = data[y]
		for x = 0, res - 1 do
			pixels[y+1][x+1] = to_tgacolor(col)
  
  return pixels
end


