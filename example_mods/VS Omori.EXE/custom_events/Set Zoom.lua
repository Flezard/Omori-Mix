function onEvent(n,v1,v2)
	if n == 'Set Zoom' then
		setProperty('defaultCamZoom', v1)
	end
end