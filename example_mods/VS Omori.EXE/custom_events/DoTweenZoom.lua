function onEvent(name,v1,v2)
	args1 = stringSplit(v1, ',')
	args2 = stringSplit(v2, ',')
	if name == 'DoTweenZoom' then
		doTweenZoom(v1..'Zoom',v1,args2[1],args2[2],args2[3])
		setProperty('')
	end
end