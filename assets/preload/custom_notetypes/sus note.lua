function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Fire Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'sus note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notesAmogus/SHOOTNOTE_assets'); --Change texture --Change note splash texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', -100);
			--setPropertyFromGroup('unspawnNotes', i, 'x', getPropertyFromGroup('unspawnNotes', i, 'x')-166);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Lets Opponent's instakill notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			else
				setPropertyFromGroup('unspawnNotes', i, 'mustPress', false);
			end
		end
	end
end

local shootAnims = {"rightSHOOT"}

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'sus note' then
	triggerEvent('Play Animation','rightSHOOT','dad');
	triggerEvent('Play Animation','dodge','bf');
		playSound('gun', 2);
		characterPlayAnim('dad', shootAnims[direction + 1], false);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		setProperty('dad.specialAnim', true);
		ghostmisses = ghostmisses + null;
		ghostmisses = ghostmisses - null;
		cameraShake('camGame', 0.01, 0.2)
	end
end
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'shoot note' then
		setProperty('health', -1);
		setProperty('health', getProperty('health')-0.8);
		runTimer('bleed', 0.2, 20);
		characterPlayAnim('boyfriend', 'hurt', true)
	end
end