function onCreate()

	makeLuaSprite('front','effects/glitchy',0,0)
	scaleObject('front',1.0,1.0)
    setObjectCamera('front', 'hud')

	addLuaSprite('front',false)
	close(true)

end
