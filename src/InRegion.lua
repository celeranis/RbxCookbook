-- Returns true if the given Vector3 point is within the given Region3

function inRegion(point: Vector3, region: Region3): boolean
	local relative = (region.CFrame:PointToObjectSpace(point) - region.CFrame:PointToObjectSpace(region.CFrame.Position)) / region.Size
	return -0.5 <= relative.X and relative.X <= 0.5
		and -0.5 <= relative.Y and relative.Y <= 0.5
		and -0.5 <= relative.Z and relative.Z <= 0.5
end
