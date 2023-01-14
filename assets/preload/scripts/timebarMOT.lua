local songPositionBar = true --whether or not the song position/time bar will be active
function onCreate()
makeLuaSprite('time', 'timerHud', 0, 0)
setScrollFactor('time', 1, 1)
setObjectCamera('time','hud')
addLuaSprite('time',true)
end
function onUpdate()
setProperty('time.x', getProperty('timeBar.x') - 5)
setProperty('time.angle', getProperty('timeBar.angle'))
setProperty('time.alpha', getProperty('timeBar.alpha'))
setProperty('time.y', getProperty('timeBar.y') - 3.6)
setProperty('time.scale.x', getProperty('timeBar.scale.x'))
setProperty('time.scale.y', getProperty('timeBar.scale.y'))
setObjectOrder('time', getObjectOrder('timeBar') + 99)
setProperty('TB.alpha', 0)
setObjectOrder('timeTxt',100)
end
function onSongStart()
doTweenAlpha('time', 'time', 0.6, 0.25)
end
function onEndSong()
setProperty('time.alpha', 0)
end

function onCreatePost()
	setProperty('time.alpha', getProperty('timeBar.alpha'))
	setProperty('time.x', getProperty('timeBar.x') - 3)
	setProperty('time.angle', getProperty('timeBar.angle'))
	setProperty('time.y', getProperty('timeBar.y') - 3)
	setObjectOrder('time', getObjectOrder('timeTxt') + 1)
	setProperty('time.scale.x', getProperty('timeBar.scale.x'))
	setProperty('time.scale.y', getProperty('timeBar.scale.y'))
end

function onSongStart()
	--timebarType = getPropertyFromClass('ClientPrefs', 'timeBarType')
	--if timeBarType == 'timeLeft' or timeBarType == 'timeElapsed' or timeBarType == 'songName' then
		--setProperty('time.alpha', 1) --not good
		doTweenAlpha('tb1', 'time', 1, 0.5, 'linear')
	--end
end
