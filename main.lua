require("player")

function eval(x)
  return loadstring("return "..x)()
end

function love.load()
  player.load()
end

function love.update(dt)
  player.movement()
end

function love.draw()
  love.graphics.draw(player.sprite, player.rec, player.x, player.y)
end