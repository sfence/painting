
local paintingdir = minetest.get_worldpath().."/painting/"

minetest.mkdir(paintingdir)

function painting.file_exists(filename)
  local file = io.open(paintingdir..filename,"r")
  if (file==nil) then
    return false
  end
  file:close()
  return true
end

function painting.file_to_string(filename)
  local file = io.open(paintingdir..filename,"r")
  if not file then
    return nil
  end
  local text = file:read("a")
  file:close()
  return text
end

function painting.string_to_file(filename, text)
  local file = io.open(paintingdir..filename,"w")
  if not file then
    return false
  end
  file:write(text)
  file:close()
  return true
end

