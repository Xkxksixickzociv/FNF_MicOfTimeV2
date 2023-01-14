function onCreate()
	-- background shit
	makeLuaSprite('nothing', 'BG/nothinglmao', -600, -300);
	setScrollFactor('nothinglmao', 0.9, 0.9)
	
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeAnimatedLuaSprite('Static','effects/Static',0,0)addAnimationByPrefix('Static','dance','StaticOV',24,true)
	setLuaSpriteScrollFactor('Static',160,90)

	addLuaSprite('Static',true)

	setObjectCamera('Static','camOther')
	objectPlayAnimation('Static','dance',false)

	setScrollFactor('Static', 0.9, 0.9);
	scaleObject('Static', 1.7, 1.7);
	makeLuaSprite('vignette','effects/vignette',0,0)

	setLuaSpriteScrollFactor('vignette',160,90)
	end

	addLuaSprite('nothinglmao', false);
	addLuaSprite('vignette', true);
	addLuaSprite('Static', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end