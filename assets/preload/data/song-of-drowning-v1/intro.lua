local allowCountdown = false;
local allowCountdownEnd = false;
local continue = false;
local yes = false;
function onStartCountdown()
    -- Block the first countdown and start ben teleport cutscene
    if not allowCountdown and not seenCutscene then
        setProperty('inCutscene', true)
        setProperty('dad.alpha', 1)
        setProperty('camFollowPos.y', 550)
        setProperty('camHUD.visible', false)
        characterPlayAnim('dad', 'tp', true)
        playSound('bentp')
	runTimer('start', 2.7)
	    allowCountdown = true;
        return Function_Stop;
    end
    setProperty('camHUD.visible', true)
	return Function_Continue;
end
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'start' then
        startCountdown()
	return Function_Continue;
    end
        return Function_Stop;
end