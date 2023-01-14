function onCreate()
-- (BG Stuff)
    makeLuaSprite('bg', 'BG/jadubg/bg', -1050, -600);
    setLuaSpriteScrollFactor('bg', 0.9, 0.9);

    makeLuaSprite('pillars', 'BG/jadubg/pillars', -1350, -600);
    setLuaSpriteScrollFactor('pillars', 0.9, 0.9);

    makeLuaSprite('platforms', 'BG/jadubg/platforms', -1350, -800);
    setLuaSpriteScrollFactor('platforms', 0.9, 0.9);

    makeLuaSprite('triforce', 'BG/jadubg/triforce', -2070, -1200);
    setLuaSpriteScrollFactor('triforce', 1.0, 1.0);
	scaleObject('triforce',1.4,1.4)

    if not lowQuality then
        makeLuaSprite('BLUE', 'BG/jadubg/BLUE', -1050, -600);
        setObjectCamera('BLUE','camOther')
        setLuaSpriteScrollFactor('BLUE', 0.9, 0.9);
    end

-- (AddLuaSprite Stuff)

    addLuaSprite('bg', false);
    addLuaSprite('pillars', false);
    addLuaSprite('platforms', false);
    addLuaSprite('triforce', false);
    addLuaSprite('BLUE', true);

-- (SetProperty Stuff)

    setProperty('BLUE.visible', false);
    setProperty('particleBLUE.visible', false);

-- (Particle Stuff)

        makeLuaSprite('particleBLUE', -1050, -600);
        setLuaSpriteScrollFactor('particleBLUE', 0.9, 0.9);

end