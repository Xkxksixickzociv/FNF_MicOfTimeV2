function onCreate()

	makeLuaSprite('bg1','BG/forest/ben sky',-1350,-550)
	scaleObject('bg1',1.0,1.0)
	setLuaSpriteScrollFactor('bg1',0.8,0.8);
	makeLuaSprite('bg2','BG/forest/ben tree',-1350,-550)
	scaleObject('bg2',1.0,1.0)
	setLuaSpriteScrollFactor('bg2',0.8,0.8);
	makeLuaSprite('fg','BG/forest/ben ground',-3150,-1680)
	scaleObject('fg',1.7,1.7)
	addLuaSprite('bg',false)
	addLuaSprite('bg2',false)
	addLuaSprite('fg',false)
	precacheImage('fire')
	close(true)

end
