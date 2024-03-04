local beforeDrop = true
function onCreate()
	path = 'stages/'..curStage..'/'

	makeLuaSprite('sky', path..'sky', -270, -100);
	setScrollFactor('sky', 0.7, 0.7);

	makeLuaSprite('ground', path..'ground', -510, -200);
	
	makeLuaSprite('monkeybars', path..'monkeybars', -505, 250);

	makeLuaSprite('sky2', path..'sky.exe', -270, -100);
	makeLuaSprite('ground2', path..'ground.exe', -510, -200);
	makeLuaSprite('monkeybars2', path..'monkeybars.exe', -505, 105);

	makeAnimatedLuaSprite('kel', path..'kel', 700, 220)
	addAnimationByPrefix('kel', 'idle', 'Kel', 24, false)
	makeAnimatedLuaSprite('aubrey', path..'aubrey', -270, 250)
	addAnimationByPrefix('aubrey', 'idle', 'Aubrey', 24, false)
	makeAnimatedLuaSprite('hero', path..'hero', 1100, 250)
	addAnimationByPrefix('hero', 'idle', 'Hero', 24, false)

	addLuaSprite('sky', false);
	addLuaSprite('ground', false);
	addLuaSprite('monkeybars', true);

	addLuaSprite('sky2', false);
	addLuaSprite('ground2', false);
	addLuaSprite('monkeybars2', true);
	addLuaSprite('kel', false);
	addLuaSprite('aubrey', false);
	addLuaSprite('hero', false);
	
	setProperty('sky2.alpha', 0.00001)
	setProperty('ground2.alpha', 0.00001)
	setProperty('monkeybars2.alpha', 0.00001)
	setProperty('kel.alpha', 0.00001)
	setProperty('aubrey.alpha', 0.00001)
	setProperty('hero.alpha', 0.00001)

	makeLuaSprite('blackSHIT2', '', -100, -100)
	makeGraphic('blackSHIT2', 1500, 900, '000000')
	setObjectCamera('blackSHIT2','camHUD')
	addLuaSprite('blackSHIT2',false)
	setProperty('blackSHIT2.alpha', 0.00001)
end
function onCreatePost()
	setProperty('healthBar.alpha', 0.00001)
	setProperty('healthBarBG.alpha', 0.00001)
	setProperty('iconP2.alpha', 0.00001)
	setProperty('iconP1.alpha', 0.00001)
end

function onSongStart()
	setProperty('cameraSpeed', 2)
end
function onUpdate()
	if beforeDrop == true then
		setProperty('health', 1)
	end
end

function onBeatHit()
	if curBeat%2 == 0 then
		playAnim('kel', 'idle', true)
		playAnim('aubrey', 'idle', true)
		playAnim('hero', 'idle', true)
	end
	if curBeat == 392 then
		setObjectCamera('blackSHIT2', 'camHUD')
		doTweenAlpha('death', 'blackSHIT2', 1, 8)
	end
	if curBeat == 297 then
		setObjectCamera('blackSHIT2', 'camOther')
		doTweenAlpha('death33', 'blackSHIT2', 1, 0.5)
	end
end

function onEvent(name,v1,v2)
	if name == 'Your Time Transition' then
		if v1 == 'second' then
			setProperty('kel.alpha', 1)
			setProperty('aubrey.alpha', 1)
			setProperty('hero.alpha', 1)
		else
			beforeDrop = false

			removeLuaSprite('sky', true)
			removeLuaSprite('ground', true)
			removeLuaSprite('monkeybars', true)

			setProperty('vocals.volume', 1)
			setProperty('sky2.alpha', 1)
			setProperty('ground2.alpha', 1)
			setProperty('monkeybars2.alpha', 1)
			setProperty('gf.color', 0x0f3bce6)
			setProperty('boyfriend.color', 0x0f3bce6)
			setProperty('dad.color', 0x0f3bce6)
			setProperty('healthBar.alpha', 1)
			setProperty('healthBarBG.alpha', 1)
			setProperty('iconP2.alpha', 1)
			setProperty('iconP1.alpha', 1)
		end
	end
end