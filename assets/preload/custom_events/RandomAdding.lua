fucntion onEvent(n, v1, v2)
    if n == 'Random' then
        setProperty('ohno.x', math.random(1,10))
  end
	makeLuaSprite('ohno','Events/error',0,0)
	addLuaSprite('ohno',false)
    end
end