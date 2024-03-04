function onCreate()
	path = 'stages/'..curStage..'/'

	makeLuaSprite('ground', path..'ground', -515, -100);
	setScrollFactor('ground', 1, 1);
	scaleObject('ground', 1.2, 1.2);
	
	makeLuaSprite('distance', path..'distance', -515, -160);
	setScrollFactor('distance', 0.8, 0.8);
	scaleObject('distance', 1.2, 1.2);
	
	makeLuaSprite('sky', path..'sky', -270, -100);
	setScrollFactor('sky', 0.7, 0.7);
	scaleObject('sky', 1, 1);

	addLuaSprite('sky', false);
	addLuaSprite('distance', false);
	addLuaSprite('ground', false);

	close(true);
end