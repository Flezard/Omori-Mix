BFxx = 1100
BFyy = 125
DADxx = 0
DADyy = 110
GFxx = 400
GFyy = 130

function onCreate()

	makeLuaSprite('Blackscreen', 'startscreens/blackscreen', 0, 0);
	scaleObject('Blackscreen',7, 7)
	setObjectCamera('Blackscreen', 'hud')
	makeGraphic('Blackscreen',screenWidth,screenHeight,'000000')
	setProperty('Blackscreen.visible', false)
	addLuaSprite('Blackscreen', false);
	makeLuaSprite('Blackscreen2', 'startscreens/blackscreen', 0, 0);
	setObjectCamera('Blackscreen2','other')
	makeGraphic('Blackscreen2',screenWidth,screenHeight,'000000')
	setProperty('Blackscreen2.visible', false)
	addLuaSprite('Blackscreen2', false);
	makeLuaSprite('sunkage', 'sunkage', 0, 0);
	setObjectCamera('sunkage', 'other')
	addLuaSprite('sunkage', false);
	setProperty('sunkage.visible', true)


	--!						TRIPLE TROUBLE BACKGROUND
	makeLuaSprite('glitch', 'stages/triple trouble/glitch', -600, -100);
	setLuaSpriteScrollFactor('glitch', 0.9, 0.9);

	makeLuaSprite('trees', 'stages/triple trouble/normal/TTTrees', -600, -100);
	setLuaSpriteScrollFactor('trees', 0.5, 0.5);

	makeLuaSprite('floor', 'stages/triple trouble/normal/BackBush', -600, -200);
	setLuaSpriteScrollFactor('floor', 1, 1);
	scaleObject('floor', 1.3, 1.3);

	makeLuaSprite('FG1', 'stages/triple trouble/normal/FGTree1', -800, -200);
	setLuaSpriteScrollFactor('FG1', 1.4, 1.4);

	makeLuaSprite('FG2', 'stages/triple trouble/normal/FGTree2', -100, 140);
	setLuaSpriteScrollFactor('FG2', 1.6, 1.4);

	makeLuaSprite('treeback', 'stages/triple trouble/xeno/BackTrees', -600, -200);
	setLuaSpriteScrollFactor('treeback', 0.5, 0.5);

	makeLuaSprite('grass', 'stages/triple trouble/xeno/grass', -600, -100);
	setLuaSpriteScrollFactor('grass', 1, 1);

	makeLuaSprite('FG3', 'stages/triple trouble/xeno/FGTree1', -900, -300);
	setLuaSpriteScrollFactor('FG3', 1.4, 1.4);

	makeLuaSprite('FG4', 'stages/triple trouble/xeno/FGTree2', -400, 0);
	setLuaSpriteScrollFactor('FG4', 1.6, 1.4);

	makeAnimatedLuaSprite('p3_Stats', 'stages/triple trouble/NewTitleMenuBG', -600, -200);
	addAnimationByPrefix('p3_Stats','busk','TitleMenuSSBG instance 1',24,true)
	scaleObject('p3_Stats', 7, 5);

	makeLuaSprite('treeback2', 'stages/triple trouble/xeno/BackTrees', -600, -200);
	setLuaSpriteScrollFactor('treeback2', 0.5, 0.5);
		setPropertyLuaSprite('treeback2', 'flipX', true);

	makeLuaSprite('grass2', 'stages/triple trouble/xeno/grass', -400, -100);
	setLuaSpriteScrollFactor('grass2', 1, 1);
		setPropertyLuaSprite('grass2', 'flipX', true);

	makeLuaSprite('FG5', 'stages/triple trouble/xeno/FGTree1', -200, -300);
	setLuaSpriteScrollFactor('FG5', 1.4, 1.4);
		setPropertyLuaSprite('FG5', 'flipX', true);

	makeLuaSprite('FG6', 'stages/triple trouble/xeno/FGTree2', -400, 0);
	setLuaSpriteScrollFactor('FG6', 1.6, 1.4);
		setPropertyLuaSprite('FG6', 'flipX', true);

	addLuaSprite('glitch', false);
	addLuaSprite('trees', false);
	addLuaSprite('floor', false);
	addLuaSprite('FG1', true);
	addLuaSprite('FG2', true);
	addLuaSprite('p3_Stats', false)
	addLuaSprite('treeback', false);
	addLuaSprite('grass', false);
	addLuaSprite('FG3', true);
	addLuaSprite('FG4', true);
	addLuaSprite('treeback2', false);
	addLuaSprite('grass2', false);
	addLuaSprite('FG5', true);
	addLuaSprite('FG6', true);
end
function onCreatePost()

	setProperty('FG1.visible', false)
	setProperty('FG2.visible', false)
	setProperty('floor.visible', false)
	setProperty('trees.visible', false)
	setProperty('FG3.visible', false)
	setProperty('FG4.visible', false)
	setProperty('treeback.visible', false)
	setProperty('grass.visible', false)
	setProperty('glitch.visible', false)
	setProperty('p3_Stats.visible', false)
	setProperty('FG5.visible', false)
	setProperty('FG6.visible', false)
	setProperty('treeback2.visible', false)
	setProperty('grass2.visible', false)
end

--function onEvent(eventName, value1, dadName)
function onUpdate()
    --if eventName == "Change Character" then
		--if value1 == '1' then
		setProperty('FG1.visible', false)
		setProperty('FG2.visible', false)
		setProperty('floor.visible', false)
		setProperty('trees.visible', false)
		setProperty('FG3.visible', false)
		setProperty('FG4.visible', false)
		setProperty('treeback.visible', false)
		setProperty('grass.visible', false)
		setProperty('glitch.visible', false)
		setProperty('p3_Stats.visible', false)
		setProperty('FG5.visible', false)
		setProperty('FG6.visible', false)
		setProperty('treeback2.visible', false)
		setProperty('grass2.visible', false)
		--end

		if dadName == 'xenophane' then
			BFxx = 1100
			BFyy = 125
			DADxx = 0
			DADyy = 110
			setProperty('p3_Stats.visible', true)
			setProperty('FG3.visible', true)
			setProperty('FG4.visible', true)
			setProperty('treeback.visible', true)
			setProperty('grass.visible', true)
			setProperty('floor.visible', true)
			setProperty('trees.visible', true)
			setProperty('glitch.visible', true)
		elseif dadName == 'tailsexe' or dadName == 'knux' or dadName == 'soulhero' then
			BFxx = 1100
			BFyy = 125
			DADxx = 100
			DADyy = 110
			setProperty('dad.alpha', 1)
			setProperty('FG1.visible', true)
			setProperty('FG2.visible', true)
			setProperty('floor.visible', true)
			setProperty('trees.visible', true)
			setProperty('glitch.visible', true)
		elseif dadName == 'xenophane-flip' then
			BFxx = 1100
			BFyy = 125
			DADxx = 0
			DADyy = 110
			setProperty('p3_Stats.visible', true)
			setProperty('FG5.visible', true)
			setProperty('FG6.visible', true)
			setProperty('treeback2.visible', true)
			setProperty('grass2.visible', true)
			setProperty('floor.visible', true)
			setProperty('trees.visible', true)
			setProperty('glitch.visible', true)
		else
			setProperty('FG1.visible', false)
			setProperty('FG2.visible', false)
			setProperty('floor.visible', false)
			setProperty('trees.visible', false)
			setProperty('FG3.visible', false)
			setProperty('FG4.visible', false)
			setProperty('treeback.visible', false)
			setProperty('grass.visible', false)
			setProperty('glitch.visible', false)
			setProperty('p3_Stats.visible', false)
			setProperty('FG5.visible', false)
			setProperty('FG6.visible', false)
			setProperty('treeback2.visible', false)
			setProperty('grass2.visible', false)
			setProperty('SunkyStage.visible', false)
			setProperty('SunkyBg.visible', false)
			setProperty('SKY.visible', false)
			setProperty('hills 1.visible', false)
			setProperty('floorX.visible', false)
			setProperty('eyeflower.visible', false)
			setProperty('hands.visible', false)
			setProperty('smallflower.visible', false)
			setProperty('smallflower2.visible', false)
			setProperty('smallflowe2.visible', false)
			setProperty('tree.visible', false)
			setProperty('Wall.visible', false)
			setProperty('Floor.visible', false)
			setProperty('FleetwayBGshit.visible', false)
			setProperty('Emerald Beam Charged.visible', false)
			setProperty('Emeralds.visible', false)
			setProperty('The Chamber.visible', false)
			setProperty('pebles.visible', false)
			setProperty('porkerbop.visible', false)
			setProperty('metalBG.visible', false)
			setProperty('metalsky.visible', false)
			setProperty('buildingsback.visible', false)
			setProperty('egg back.visible', false)
			setProperty('buildings.visible', false)
			setProperty('run bg.visible', false)
			setProperty('flashinglight.visible', false)
			setProperty('metalfloor.visible', false)
			setProperty('dadshadow.visible', false)
			setProperty('foreground.visible', false)
			setProperty('funsky.visible', false)
			setProperty('tre.visible', false)
			setProperty('bush.visible', false)
			setProperty('tre2.visible', false)
			setProperty('ground.visible', false)
			setProperty('front.visible', false)
			setProperty('front2.visible', false)
		end

		setCharacterX('boyfriend', BFxx)
		setCharacterY('boyfriend', BFyy)
		setCharacterX('dad', DADxx)
		setCharacterY('dad', DADyy)
		setCharacterX('gf', GFxx)
		setCharacterY('gf', GFyy)

		if keyboardJustPressed('F') then
			curTime = getPropertyFromClass('Conductor', 'songPosition')
			amountTime = (keyboardPressed('SHIFT') and 10000 or 5000)
			setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition') + amountTime)
			setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
			setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
		end
		if keyboardJustPressed('G') then
			curTime = getPropertyFromClass('Conductor', 'songPosition')
			amountTimeBig = (keyboardPressed('SHIFT') and 60000 or 30000)
			setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition') + amountTimeBig)
			setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
			setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
		end

		if dadName == 'tailsexe' or dadName == 'egghead' then
			triggerEvent('Change Character', '0', 'newbf')
		end
		if dadName == 'knux' or dadName == 'Majin4' then
			--triggerEvent('Change Character', '0', 'Boyflip')
		end
		if dadName == 'xenophane' then
			--triggerEvent('Change Character', '0', 'Bfper')
		end
		if dadName == 'xenophane-flip' then
			--triggerEvent('Change Character', '0', 'Bfperflip')
		end
	--end
end

function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('porkerbop', 'first', true);
	end
	if curBeat == 1640 then
	setProperty('Blackscreen2.visible', true)
	end
	if curBeat == 1655 then
	doTweenAlpha('LordXIntro', 'Blackscreen2', 0, 6, 'linear')
	--setProperty('Blackscreen.visible', false)
	end
	if curBeat == 2060 then
	doTweenAlpha('MajinOutro', 'Blackscreen2', 1, 3, 'linear')
	end
	if curBeat == 2127 then
	doTweenAlpha('sunkagealpha', 'sunkage', 1, 3, 'linear')
	end
	if curBeat == 2135 then
	doTweenAlpha('SunkyIntro', 'Blackscreen2', 0, 3, 'linear')
	end
	if curBeat == 2136 then
	setProperty('sunkage.visible', false)
	end
	playAnim('tre', 'tre', true)
	playAnim('tre2', 'tre2', true)
	playAnim('front', 'front', true)
	playAnim('front2', 'front2', true)
end