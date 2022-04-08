require("src/player")
require("src/textures")
require("maps/main_map")

function eval(x)
  return loadstring("return "..x)()
end

function love.load()
  textures.load()
  main_map.load()
end

function love.update(dt)
  main_map.update()
end

function love.draw()
  main_map.draw()
end
