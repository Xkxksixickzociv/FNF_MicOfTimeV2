local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('fiveNightsAtFreddysBeatBox Heuh heuh heuh ehu euh hue hue uhe heu ehu heu  hue heuuhe  hue heu heuh e ti it iti i tsi du du d u du du du tu tsi');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onUpdate()
	if curStep == 2560 then
		noteTweenAlpha('alpha', 0, 0, 1.5, 'linear');
		noteTweenAlpha('alpha1', 1, 0, 1.5, 'linear');
		noteTweenAlpha('alpha2', 2, 0, 1.5, 'linear');
		noteTweenAlpha('alpha3', 3, 0, 1.5, 'linear');
		noteTweenAlpha('alpha4', 4, 0, 1.5, 'linear');
		noteTweenAlpha('alpha5', 5, 0, 1.5, 'linear');
		noteTweenAlpha('alpha6', 6, 0, 1.5, 'linear');
		noteTweenAlpha('alpha7', 7, 0, 1.5, 'linear');
		setProperty('flash.visible',true)
	end

	if curStep == 2659 then
		noteTweenAlpha('alpha4', 4, 1, 1.5, 'linear');
		noteTweenAlpha('alpha5', 5, 1, 1.5, 'linear');
		noteTweenAlpha('alpha6', 6, 1, 1.5, 'linear');
		noteTweenAlpha('alpha7', 7, 1, 1.5, 'linear')
	end

	if curStep == 2816 then
		noteTweenAlpha('alpha4', 4, 0, 1.5, 'linear');
		noteTweenAlpha('alpha5', 5, 0, 1.5, 'linear');
		noteTweenAlpha('alpha6', 6, 0, 1.5, 'linear');
		noteTweenAlpha('alpha7', 7, 0, 1.5, 'linear')
	end

	if curStep == 2912 then
		noteTweenAlpha('alpha4', 4, 1, 1.5, 'linear');
		noteTweenAlpha('alpha5', 5, 1, 1.5, 'linear');
		noteTweenAlpha('alpha6', 6, 1, 1.5, 'linear');
		noteTweenAlpha('alpha7', 7, 1, 1.5, 'linear')
	end

	if curBeat == 2991 then
		setCharacterY('dad',950)
		setProperty('flash.visible',false)
	end   

  	if curStep >= 0 then
    	   	songPos = getSongPosition()
    	      	local currentBeat = (songPos/1000)*(bpm/50)
    		doTweenY(dadTweenY, 'dad', 100-50*math.sin((currentBeat*0.25)*math.pi),0.001)
  	end
end