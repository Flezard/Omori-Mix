function onCreatePost()
	enabled = false
end
function onEvent(name, v1, v2, strumTime)
	if name == 'Scroll Speed Bop' then
		if v1 == 'off' then
			enabled = false
		else
			mult = ((v1+10)*0.1)
			enabled = true
			bps = (60/bpm)
		end
	end
end
function onBeatHit()
	if enabled then
		if (curBeat % 2 == 0) then
			--even beat
			triggerEvent("Change Scroll Speed", scrollSpeed * mult, bps)
		else
			--odd beat
			triggerEvent("Change Scroll Speed", scrollSpeed * (1/(mult*1.5)), bps)
		end
	end
end