function onCreate()
	-- background shit
	makeLuaSprite('nothing', 'BG/awakeningbg', -820, -460);
	setScrollFactor('nothing', 1.0, 1.0)
	scaleObject('nothing',1.5,1.5)

	addLuaSprite('nothing', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end