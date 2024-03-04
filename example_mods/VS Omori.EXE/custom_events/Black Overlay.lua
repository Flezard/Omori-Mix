function onCreatePost()
	makeLuaSprite('blackSHIT', '', -100, -100)
    	makeGraphic('blackSHIT', 1500, 900, '000000') 	
	setObjectCamera('blackSHIT','camHUD')
	addLuaSprite('blackSHIT',true)
	setProperty('blackSHIT.alpha', 0.00001)
end
function onEvent(n, v1, v2)
	if n == 'Black Overlay' then
		if v2 == '' then
			setProperty('blackSHIT.alpha', v1)
		else
			doTweenAlpha('trans', 'blackSHIT', v1, v2)
		end
	end
end