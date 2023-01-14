function onStepHit()
  if curStep==577 then
    doTweenX('dad','dad',530,0.01)
doTweenX('dad','dad',
getProperty('opponent.x',true)+1)
    doTweenX('bf','bf',400,0)
  end
  if curStep==575 then
    makeLuaSprite('black','black',-500,0)
    scaleObject('black',9.3,9.3)
    setObjectCamera('black','front')
    addLuaSprite('black',false)
  end
  if curStep==575 then
    makeLuaSprite('black1','black',-500,0)
    scaleObject('black1',9.3,9.3)
    setObjectCamera('black1', 'front')
    addLuaSprite('black1',true)
  end
  if curStep==576 then
  doTweenAlpha('black1','black1',0,1)
  end
  if curStep==1082 then
    makeLuaSprite('black2','black',-500,0)
    scaleObject('black2',9.3,9.3)
    setObjectCamera('black2', 'front')
    addLuaSprite('black2',true)
  end
  if curStep==1087 then
  doTweenAlpha('black2','black2',0,1)
  end
  if curStep==1082 then
  doTweenAlpha('black','black',0,001)
end
  end