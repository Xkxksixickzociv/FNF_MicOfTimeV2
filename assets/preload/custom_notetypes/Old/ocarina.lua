function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'ocarina' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'OCNOTE_assets');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-0.1');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
	--debugPrint('Script started!')
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'ocarina' then
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