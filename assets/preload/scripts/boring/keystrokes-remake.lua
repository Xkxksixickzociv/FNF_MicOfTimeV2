function onCreatePost()
    makeLuaSprite('upButton', nil, 200, 600)
    makeGraphic('upButton', 65, 65, '0032ff')

    makeLuaSprite('downButton', nil, getProperty('upButton.x') - 70, getProperty('upButton.y'))
    makeGraphic('downButton', 65, 65, '0032ff')

    makeLuaSprite('leftButton', nil, getProperty('downButton.x') - 70, getProperty('downButton.y'))
    makeGraphic('leftButton', 65, 65, '0032ff')

    makeLuaSprite('rightButton', nil, getProperty('downButton.x') + 140, getProperty('downButton.y'))
    makeGraphic('rightButton', 65, 65, '0032ff')

    makeLuaSprite('3', nil, 200, 600)
    makeGraphic('3', 65, 65, 'FFFFFF')

    makeLuaSprite('2', nil, getProperty('upButton.x') - 70, getProperty('upButton.y'))
    makeGraphic('2', 65, 65, 'FFFFFF')

    makeLuaSprite('1', nil, getProperty('downButton.x') - 70, getProperty('downButton.y'))
    makeGraphic('1', 65, 65, 'FFFFFF')

    makeLuaSprite('4', nil, getProperty('downButton.x') + 140, getProperty('downButton.y'))
    makeGraphic('4', 65, 65, 'FFFFFF')

    makeLuaSprite('bg', nil, getProperty('downButton.x') - 73, getProperty('downButton.y') - 3)
    makeGraphic('bg', 281, 71, 'FFFFFF')


    addLuaSprite('bg', true)
    setObjectCamera('bg', 'hud')

    addLuaSprite('upButton', true)
    setObjectCamera('upButton', 'hud')

    addLuaSprite('downButton', true)
    setObjectCamera('downButton', 'hud')

    addLuaSprite('leftButton', true)
    setObjectCamera('leftButton', 'hud')

    addLuaSprite('rightButton', true)
    setObjectCamera('rightButton', 'hud')

    addLuaSprite('3', true)
    setObjectCamera('3', 'hud')
	setProperty('3.alpha', 0)

    addLuaSprite('2', true)
    setObjectCamera('2', 'hud')
	setProperty('2.alpha', 0)

    addLuaSprite('1', true)
    setObjectCamera('1', 'hud')
	setProperty('1.alpha', 0)

    addLuaSprite('4', true)
    setObjectCamera('4', 'hud')
	setProperty('4.alpha', 0)


    makeLuaText('upText', 'UP', 60, getProperty('upButton.x'), getProperty('upButton.y') + 20)
    setTextAlignment('upText', 'center')
    setObjectCamera('upText', 'hud')
    setTextSize('upText', 20)
    setTextBorder('upText', 0, 000000)
    addLuaText('upText')

    makeLuaText('downText', 'DOWN', 60, getProperty('downButton.x'), getProperty('downButton.y') + 20)
    setTextAlignment('downText', 'center')
    setObjectCamera('downText', 'hud')
    setTextSize('downText', 20)
    setTextBorder('downText', 0, 000000)
    addLuaText('downText')

    makeLuaText('leftText', 'LEFT', 60, getProperty('leftButton.x') + 2, getProperty('leftButton.y') + 20)
    setTextAlignment('leftText', 'center')
    setObjectCamera('leftText', 'hud')
    setTextSize('leftText', 20)
    setTextBorder('leftText', 0, 000000)
    addLuaText('leftText')

    makeLuaText('rightText', 'RIGHT', 65, getProperty('rightButton.x') - 1, getProperty('rightButton.y') + 20)
    setTextAlignment('rightText', 'center')
    setObjectCamera('rightText', 'hud')
    setTextSize('rightText', 20)
    setTextBorder('rightText', 0, 000000)
    addLuaText('rightText')
end

function onUpdate(elapsed)
    --this bit might be poorly done idk
    if keyPressed('up') then
        setProperty('3.alpha', 1)
        cancelTween('3Fade')
        setTextColor('upText', '7f7f7f')
    else
        doTweenAlpha('3Fade', '3', 0.3, 0.15, 'linear')
        setTextColor('upText', 'FFFFFF')
    end

    if keyPressed('down') then
        setProperty('2.alpha', 1)
        cancelTween('2Fade')
        setTextColor('downText', '7f7f7f')
    else
        doTweenAlpha('2Fade', '2', 0.3, 0.15, 'linear')
        setTextColor('downText', 'FFFFFF')
    end

    if keyPressed('left') then
        setProperty('1.alpha', 1)
        cancelTween('1Fade')
        setTextColor('leftText', '7f7f7f')
    else
        doTweenAlpha('1Fade', '1', 0.3, 0.15, 'linear')
        setTextColor('leftText', 'FFFFFF')
    end

    if keyPressed('right') then
        setProperty('4.alpha', 1)
        cancelTween('4Fade')
        setTextColor('rightText', '7f7f7f')
    else
        doTweenAlpha('4Fade', '4', 0.3, 0.15, 'linear')
        setTextColor('rightText', 'FFFFFF')
    end
end