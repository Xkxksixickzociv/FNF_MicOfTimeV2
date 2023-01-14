function onCreate()
	-- background shit
	makeLuaSprite('nothing', 'BG/oldForest', -920, -250);
	setScrollFactor('nothing', 1.0, 1.0)
	scaleObject('nothing',1.7,1.7)

	addLuaSprite('nothing', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end