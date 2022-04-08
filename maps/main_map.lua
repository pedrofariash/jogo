main_map = {
	objects = {
		way = {
			x = 0, y = 300
		}
	}
}

function main_map.load()
	player.x = 300
	main_map.objects.way.sprite = textures.resources[5]
	main_map.objects.way.rec = love.graphics.newQuad(0, 0, 200, 30, main_map.objects.way.sprite:getWidth(), main_map.objects.way.sprite:getHeight())
end

function main_map.update()
	player.movementH()
end

function main_map.draw()
	player.draw()
	for a = 0, 5 do
		love.graphics.draw(main_map.objects.way.sprite, main_map.objects.way.rec, (main_map.objects.way.x+196)*a, main_map.objects.way.y)
	end
end