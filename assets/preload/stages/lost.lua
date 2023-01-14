function onCreate()
	-- background shit
	makeLuaSprite('nothing', 'BG/nothing', -600, -300);
	setScrollFactor('nothing', 0.9, 0.9)

	addLuaSprite('nothing', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end