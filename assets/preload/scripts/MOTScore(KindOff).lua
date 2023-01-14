function onUpdatePost()
    if hits < 1 then
        setProperty('scoreTxt.text', 'Score: 0 | [Full Combo]: 0 | Accuracy: ?')
    elseif misses < 1 then
        setProperty('scoreTxt.text', 'Score: ' .. score .. ' | [Full Combo]: ' .. misses .. ' | Accuracy: ' ..  round(rating * 100, 2) .. '% [' .. ratingFC .. ']')
    else
        setProperty('scoreTxt.text', 'Score: ' .. score .. ' | [You Missed]: ' .. misses .. ' | Accuracy: ' ..  round(rating * 100, 2) .. '%')
    end
end

function round(x, n) --https://stackoverflow.com/questions/18313171/lua-rounding-numbers-and-then-truncate
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end