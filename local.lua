local function shakeCamera(length)
	
	local startTime = tick()
	
	while true do
		
		if tick() - startTime >= length then break end
		
		local x = math.random(-100, 100) / 1000
		local y = math.random(-100, 100) / 1000
		local z = math.random(-100, 100) / 1000
		
		script.Parent.Humanoid.CameraOffset = Vector3.new(x, y, z)
		workspace.CurrentCamera.CFrame *= CFrame.Angles(x / 100, y / 100, z / 100)
		
		wait()
	end
	
	script.Parent.Humanoid.CameraOffset = Vector3.new(0, 0, 0)
end


shakeCamera(5)