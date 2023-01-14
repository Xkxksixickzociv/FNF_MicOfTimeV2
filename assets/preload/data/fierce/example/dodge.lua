
state = true;
shouldAdd = true;

function onUpdate(elapsed)
	if (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 150) and (getMouseY('camHUD') > 82.5 and getMouseY('camHUD') < 220 and mousePressed('left')) or keyPressed('space') then
		objectPlayAnimation('dodge', 'DodgePressed', false);
	else
		objectPlayAnimation('dodge', 'DodgeNotPress', false);
	end
end

function onCreate()
    -- Dodge Keys
    makeAnimatedLuaSprite('dodge', 'dodge', 0, 82.5);
	addAnimationByPrefix('dodge', 'DodgeNotPress', 'DodgeNotPress', 24, false);
	addAnimationByPrefix('dodge', 'DodgePressed', 'DodgePressed', 12, false);
	addLuaSprite('dodge', true);
	setObjectCamera('dodge', 'other');
end