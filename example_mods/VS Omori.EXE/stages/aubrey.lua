function onCreate()
	path = 'stages/'..curStage..'/'

	makeLuaSprite('land', path..'land', -500, -250);
	setScrollFactor('land', 1, 1);
	scaleObject('land', 1, 1);
	
	makeLuaSprite('sky', path..'sky', -270, -100);
	setScrollFactor('sky', 0.7, 0.7);
	scaleObject('sky', 1, 1);

	addLuaSprite('sky', false);
	addLuaSprite('land', false);
	
	close(true);
end