player = {
  x = 200, y = 300-70,
  dirsH = {"left", "right"}, dirsV = {"up", "down"},
  dir = {}
}

function player.load()
  player.sprite = textures.resources[1]
  player.rec = love.graphics.newQuad(0, 0, 40, 80, player.sprite:getWidth(), player.sprite:getHeight())
end

function player.movementH()
  for a = 1, 2 do
    if love.keyboard.isDown(player.dirsH[a]) then
      eval("player.dir." .. player.dirsH[a] .. "()")
    end
  end
end
function player.movementV()
  for a = 1, 2 do
    if love.keyboard.isDown(player.dirsV[a]) then
      eval("player.dir." .. player.dirsV[a] .. "()")
    end
  end
end

function player.draw()
  love.graphics.draw(player.sprite, player.rec, player.x, player.y)
end

function player.dir.left()
  player.x = player.x - 5
end

function player.dir.up()
  player.y = player.y - 5
end

function player.dir.right()
  player.x = player.x + 5
end

function player.dir.down()
  player.y = player.y + 5
end