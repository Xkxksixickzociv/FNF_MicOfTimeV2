function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Fire Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'OcarinaNote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'OCNOTE_assets'); --Change texture --Change note splash texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-0.1');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', -100);
			--setPropertyFromGroup('unspawnNotes', i, 'x', getPropertyFromGroup('unspawnNotes', i, 'x')-166);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Lets Opponent's instakill notes get ignored

				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			else
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'OcarinaNote' then
makeAnimatedLuaSprite('fire','fire',-500,-270)
	scaleObject('fire',3.5,3.5)
addAnimationByPrefix('fire','fire','fire',24,true)
    setLuaSpriteScrollFactor('fire', 0.0, 0.0);
addLuaSprite('fire', true);
		objectPlayAnimation('fire','fire',false)
		setProperty('fire.visible',true)
	  runTimer('removeSprite',3.5)
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
  if tag == 'removeSprite' then
    doTweenAlpha('cutFadeOut','fire',0,0.3);
	end
end