require("player")

function eval(x)
  return loadstring("return "..x)()
end

function love.load()
  player.sprite = love.graphics.newImage('spr_player.png')
  player.rec = love.graphics.newQuad(0, 0, 32, 32, player.sprite:getWidth(), player.sprite:getHeight())
end

function love.update(dt)
  for a = 1, 4 do
    if love.keyboard.isDown(player.dirs[a]) then
      eval("player.dir." .. player.dirs[a] .. "()")
    end
  end
end

function love.draw()
  love.graphics.draw(player.sprite, player.rec, player.x, player.y)
end