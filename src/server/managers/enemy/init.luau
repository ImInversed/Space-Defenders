local ReplicatedStorage = game:GetService("ReplicatedStorage")

local shared = ReplicatedStorage.Shared
local world = require(shared.world)

local function enemy()
	for index, velocity in world.spaceshipVelocities do
		world.spaceshipTransforms[index] += velocity
	end
end

return enemy
