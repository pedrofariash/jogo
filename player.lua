player = {
  x = 200, y = 200,
  dirs = {"left", "up", "right", "down"},
  dir = {}
}

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