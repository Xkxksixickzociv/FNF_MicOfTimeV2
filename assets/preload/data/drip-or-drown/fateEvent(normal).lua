function onStepHit()
  if curStep==639 then
    makeLuaSprite('nob','Events/lamo',-780,-100)
    scaleObject('nob',2.0,2.0)
    setObjectCamera('nob','front')
    addLuaSprite('nob',true)
  end
  if curStep==639 then
    playSound('boom')
  end
  if curStep==639 then
  doTweenAlpha('nob','nob',0,01)
end
  end