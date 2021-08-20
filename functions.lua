-- painting - in-game painting for minetest

function painting.compress(string)
  return minetest.encode_base64(minetest.compress(string, "deflate"))
end

function painting.decompress(string)
  return minetest.decompress(minetest.decode_base64(string), "deflate")
end
