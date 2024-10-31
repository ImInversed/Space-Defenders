export type World = {
	spaceshipTransforms: { CFrame },
	spaceshipVelocities: { Model },
}

-- so i can either predefine archetypes or have non generic components
return {
	spaceshipTransforms = {},
	spaceshipVelocities = {},
} :: World
