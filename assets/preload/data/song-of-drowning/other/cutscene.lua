local allowCountdown = false;
local allowCountdownEnd = false;
local continue = false;
local yes = false;

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8
	if not yes then
        characterPlayAnim('dad', 'tp', true)
		return Function_Stop;
	end
	if not allowCountdown then
	  allowCountdown=true;
	return Function_Stop;
end
return Function_Continue;
end