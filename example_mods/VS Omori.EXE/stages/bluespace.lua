function onCreate()
	x = -810
	y = -400
	path = 'stages/'..curStage..'/'

	makeLuaSprite('hospital', 'stages/bluespace/hospital', x, y);

	makeAnimatedLuaSprite('aubrey', 'stages/bluespace/aubrey', x+150, y+630)
	makeAnimatedLuaSprite('kel', 'stages/bluespace/kel', x+2000, y+620)
	makeAnimatedLuaSprite('hero', 'stages/bluespace/hero', x+1750, y+410)
	makeAnimatedLuaSprite('mari', 'stages/bluespace/mari', x+375, y+380)
	makeAnimatedLuaSprite('basil', 'stages/bluespace/basil', x+1040, y+520)

	addAnimationByPrefix('aubrey', 'idle', 'aubrey', 24, false)
	addAnimationByPrefix('kel', 'idle', 'kel', 24, false)
	addAnimationByPrefix('hero', 'idle', 'hero', 24, false)
	addAnimationByPrefix('mari', 'idle', 'mari', 24, false)
	addAnimationByPrefix('basil', 'idle', 'basil', 24, false)

	setProperty('aubrey.alpha', 0.00001)
	setProperty('kel.alpha', 0.00001)
	setProperty('hero.alpha', 0.00001)
	setProperty('mari.alpha', 0.00001)
	setProperty('basil.alpha', 0.00001)

	addLuaSprite('hospital', false);
	addLuaSprite('hero', false);
	addLuaSprite('mari', false);
	addLuaSprite('aubrey', false);
	addLuaSprite('kel', false);
	addLuaSprite('basil', false);

	if songName == 'Blue Space' then
		setProperty('skipCountdown', true)
	end
end

function onCreatePost()
    addHaxeLibrary('RGBPalette', 'shaders')
    runHaxeCode([[
        var objectRGB = new RGBPalette();
        game.getLuaObject('hospital').shader = objectRGB.shader;
        game.getLuaObject('aubrey').shader = objectRGB.shader;
        game.getLuaObject('kel').shader = objectRGB.shader;
        game.getLuaObject('hero').shader = objectRGB.shader;
        game.getLuaObject('mari').shader = objectRGB.shader;
        game.getLuaObject('basil').shader = objectRGB.shader;
        game.boyfriend.shader = objectRGB.shader;
        game.dad.shader = objectRGB.shader;
        setVar('objectRGB', objectRGB);
    ]])
    --setProperty('objectRGB.r', 0x000000)
    --setProperty('objectRGB.g', 0x000000)
    --setProperty('objectRGB.b', 0xFFFFFF)
	
end

function onBeatHit()
	playAnim('aubrey', 'idle', true)
	playAnim('kel', 'idle', true)
	playAnim('hero', 'idle', true)
	playAnim('mari', 'idle', true)
	if curBeat%2 == 0 then
		playAnim('basil', 'idle', true)
	end
end

function onEvent(name, value1, value2, strumTime)
	if name == 'Blue Space Notes' then
		setNoteColor(0, '7E57C2', 'B39DDB', '000080');
		setNoteColor(1, '6A80F0', 'B39DDB', '000080');
		setNoteColor(2, '7E8BC2', 'B39DDB', '000080');
		setNoteColor(3, 'B957C2', 'B39DDB', '000080');
	end
	if name == 'Blue Space Notes Post' then
		setStrumColor(0, '6A80F0', 'B39DDB', '000080')
		colorBlueStuff()
	end
end

function setNoteColor(note, color1, color2, color3)
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			if getPropertyFromGroup('unspawnNotes', i, 'noteData') == note then
				if color1 ~= nil then
					setPropertyFromGroup('unspawnNotes', i, 'rgbShader.r', getColorFromHex(color1))
				end
				if color2 ~= nil then
					setPropertyFromGroup('unspawnNotes', i, 'rgbShader.g', getColorFromHex(color2))
				end
				if color3 ~= nil then
					setPropertyFromGroup('unspawnNotes', i, 'rgbShader.b', getColorFromHex(color3))
				end
			end
		--end
	end
end

function setStrumColor(note, color1, color2, color3)
    for i = 0, 3 do
        setPropertyFromGroup('playerStrums', i, 'useRGBShader', false)
        setPropertyFromGroup('playerStrums', i, 'rgbShader.enabled', true)
        setPropertyFromGroup('opponentStrums', i, 'useRGBShader', false)
        setPropertyFromGroup('opponentStrums', i, 'rgbShader.enabled', true)
    end
	for i = 0, 7 do
		if color1 ~= nil then
			setPropertyFromGroup('strumLineNotes', i, 'rgbShader.r', getColorFromHex(color1))
		end
		if color2 ~= nil then
			setPropertyFromGroup('strumLineNotes', i, 'rgbShader.g', getColorFromHex(color2))
		end
		if color3 ~= nil then
			setPropertyFromGroup('strumLineNotes', i, 'rgbShader.b', getColorFromHex(color3))
		end
	end

	--setPropertyFromGroup('opponentStrums', note, 'rgbShader.enabled', false)
end

function colorBlueStuff()
	setProperty('scoreTxt.color', getColorFromHex('6A80F0'))
	setTextFont('scoreTxt', 'OMORI.ttf')
	setTextSize('scoreTxt', 30)
	setTimeBarColors('00BAFF', '0C3FA4')
	setProperty('numScore.color', getColorFromHex('0C3FA4'))
end