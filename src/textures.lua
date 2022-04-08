textures = {
	paths = {
		"ocon",
		"planet1",
		"planet2",
		"planet3",
		"way"
	},
	resources = {}
}

function textures.load()
	for a = 1, 5 do
		textures.resources[a] = love.graphics.newImage("assets/" .. textures.paths[a] .. ".png")
	end
end