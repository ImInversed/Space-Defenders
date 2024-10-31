local RunService = game:GetService("RunService")
local ServerScriptService = game:GetService("ServerScriptService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local server = ServerScriptService.Server

local managersFolder = server.managers:GetChildren()

local shared = ReplicatedStorage.Shared
local world = require(shared.world)

local managers = {}

for _, manager in managersFolder do
	table.insert(managers, require(manager))
end

RunService.Heartbeat:Connect(function()
	for _, manager: (world: world.World) -> () in managers do
		manager(world)
	end
end)
