function onUpdate()
    if ratingName == '?' then
        setRatingName('Better than you') --When there are no notes
    end
    if ratingName == 'You Suck!' then
        setRatingName('You Get No Bitches') --From 0% to 19% of accuracy
    end
    if ratingName == 'Shit' then
        setRatingName('Loser') --From 20% to 39% of accuracy
    end
    if ratingName == 'Bad' then
        setRatingName('Not cool bro') --From 40% to 49% of accuracy
    end
    if ratingName == 'Bruh' then
        setRatingName('Eh') --From 50% to 59% of accuracy
    end
    if ratingName == 'Meh' then
        setRatingName('Maybe Cool') --From 60% to 68% of accuracy
    end
    if ratingName == 'Nice' then
        setRatingName('Cool') --69% of accuracy :bruh:
    end
    if ratingName == 'Good' then
        setRatingName('Super Cool') --From 70% to 79% of accuracy
    end
    if ratingName == 'Great' then
        setRatingName('Awesome Dude!') --From 80% to 89% of accuracy
    end
    if ratingName == 'Sick!' then
        setRatingName('Sick dude!') --From 90% to 99% of accuracy
    end
    if ratingName == 'Perfect!!' then
        setRatingName('Way past cool') --100% of accuracy
    end
    if ratingName == '?' and botPlay == true then
        setRatingName('Drip!') --When the botplay is activated
    end
end