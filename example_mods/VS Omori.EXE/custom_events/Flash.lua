-- Event notes hooks
function onEvent(name,v1,v2)
	args = stringSplit(v1, ',')
	if name == 'Flash' then
		cameraFlash(v2, args[1], args[2], true)
	end
end