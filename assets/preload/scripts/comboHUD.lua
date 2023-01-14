notehitlol = 0
sadfasd = 0 -- unused
font = "vcr.ttf" -- the font that the text will use.
cmoffset = 980
cmy = 419
cmx = 200
tnhx = -10
function onCreate()
    makeLuaText("tnh", 'Total Notes Hit: 0', 250, tnhx, 259);
    setTextFont('tnh', font)
    makeLuaText("cm", 'Combos: 0', 200, -getProperty('tnh.x') + cmoffset, getProperty('tnh.y') + cmy);
    setObjectCamera("cm", 'hud');
    setTextSize('cm', 19);
    addLuaText("cm");
    setTextFont('cm', font)
    setTextAlignment('cm', 'bottom')
end


function goodNoteHit(id, direction, noteType, isSustainNote)
	-- Function called when you hit a note (after note hit calculations)
	-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
	-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
	-- noteType: The note type string/tag
	-- isSustainNote: If it's a hold note, can be either true or false
      if not isSustainNote then    
         notehitlol = notehitlol + 1;
         setTextString('tnh', 'Total Notes Hit: ' .. tostring(notehitlol))
     end -- NOTE I DID NOT MAKE THIS FRANTASTIC24 MADE THIS!

end


function onUpdate(elapsed)
    notehitloltosting = tostring(notehitlol)
    setTextString('cm', 'Combos: ' .. getProperty('combo'))
    setTextString('sick', 'Sick!: ' .. getProperty('sicks'))
    setTextString('good', 'Goods: ' .. getProperty('goods'))
    setTextString('bad', 'Bads: ' .. getProperty('bads'))
    setTextString('shit', 'Shits: ' .. getProperty('shits'))
    setTextString('miss', 'Misses: ' .. getProperty('songMisses'))
	-- start of "update", some variables weren't updated yet
    -- setTextString('tnh', 'Total Notes Hit: ' + 1)
end