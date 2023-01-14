function onCreate()
	-- background stuff
	makeLuaSprite('skull_kid_bg_3', 'BG/skull/skull_kid_bg_3', -1650, -880);
	setLuaSpriteScrollFactor('skull_kid_bg_3', 0.9, 0.9);
	scaleObject('skull_kid_bg_3', 1.4, 1.4);

	makeLuaSprite('skull_kid_bg_1', 'BG/skull/skull_kid_bg_1', -1600, -540);
	setLuaSpriteScrollFactor('skull_kid_bg_3', 0.9, 0.9);
	scaleObject('skull_kid_bg_1', 1.4, 1.4);

	makeLuaSprite('t1', 'BG/skull/trasperent2', -1650, -880);
	setLuaSpriteScrollFactor('t1', 0.9, 0.9);
	scaleObject('t1', 1.4, 1.4);

    makeLuaSprite('moon', 'Events/moon', -650, -1400);
    setLuaSpriteScrollFactor('moon', 0.95, 0.95);
    scaleObject('moon', 0.9, 0.9);

	addLuaSprite('skull_kid_bg_3', false);
    addLuaSprite('moon', false);
	addLuaSprite('t1', false);
	addLuaSprite('skull_kid_bg_1', false);
end
function onUpdate(elapsed)
  if curStep >= 0 then
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/80)
    doTweenY(dadTweenY, 'dad', -150-95*math.sin((currentBeat*0.25)*math.pi),0.001)
  end
end
