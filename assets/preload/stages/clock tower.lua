function onCreate()

	makeLuaSprite('bg1','BG/matt/1',-875,-500)
	scaleObject('bg1',2.0,2.0)
	setLuaSpriteScrollFactor('bg1',0.8,0.8);

	makeLuaSprite('bg2','BG/matt/2',-875,-500)
	scaleObject('bg2',2.0,2.0)
	setLuaSpriteScrollFactor('bg2',0.8,0.8);

	makeLuaSprite('bg3','BG/matt/3',-875,-500)
	scaleObject('bg3',2.0,2.0)
	setLuaSpriteScrollFactor('bg3',0.8,0.8);

	makeLuaSprite('bg4','BG/matt/4',-875,-500)
	scaleObject('bg4',2.0,2.0)
	setLuaSpriteScrollFactor('bg4',0.8,0.8);

	makeLuaSprite('bg5','BG/matt/5',-875,-350)
	scaleObject('bg5',2.0,2.0)

	makeLuaSprite('bg6','BG/matt/6',-875,-500)
	scaleObject('bg6',2.0,2.0)

	makeLuaSprite('bg7','BG/matt/7',-875,-500)
	scaleObject('bg7',2.0,2.0)

	makeLuaSprite('bg8','BG/matt/8',-875,-500)
	scaleObject('bg8',2.0,2.0)

	makeLuaSprite('bg9','BG/matt/9',-575,-360)
	scaleObject('bg9',1.4,1.4)

	makeLuaSprite('bg10','BG/matt/10',-800,-510)
	scaleObject('bg10',2.0,2.0)
	setLuaSpriteScrollFactor('bg10',1.35,1.35);

	addLuaSprite('bg1',false)
	addLuaSprite('bg2',false)
	addLuaSprite('bg3',false)
	addLuaSprite('bg4',false)
	addLuaSprite('bg5',false)
	addLuaSprite('bg6',false)
	addLuaSprite('bg7',false)
	addLuaSprite('bg8',false)
	addLuaSprite('bg9',false)
	addLuaSprite('bg10',true)
	precacheImage('fire')
	close(true)

end
