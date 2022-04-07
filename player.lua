player = {
  x = 200, y = 200,
  dirs = {"left", "up", "right", "down"},
  dir = {}
}

function player.load()
  player.sprite = love.graphics.newImage('spr_player.png')
  player.rec = love.graphics.newQuad(0, 0, 32, 32, player.sprite:getWidth(), player.sprite:getHeight())
end

function player.movement()
  for a = 1, 4 do
    if love.keyboard.isDown(player.dirs[a]) then
      eval("player.dir." .. player.dirs[a] .. "()")
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