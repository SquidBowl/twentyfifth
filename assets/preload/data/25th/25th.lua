function onCreate()
	getData();
	runTimer('hello', 7)
	doTweenAlpha('dadtween', 'dad', 0, 0.1, 'linear')

	makeLuaSprite('black', 'black', 0, 0);
	setObjectCamera("black", "camother")
	scaleObject('black', 1.9, 1.9);
	addLuaSprite('black', true);
	doTweenAlpha('black', 'black', 0.1, 0.1, 'linear')
end

function onCreatePost()
	setProperty('camHUD.alpha', 0);
end

function getData()
	setProperty("dad.alpha", 0);
end

function onTimerCompleted()
	doTweenX('gf', 'gf', 650, 7.5, 'linear')
	doTweenAlpha('hudTween', 'camHUD', 1, 6, 'linear')
end

function onUpdate()
	if mustHitSection then
 
	   setProperty('defaultCamZoom', 0.85)
 
	else
 
	   setProperty('defaultCamZoom', 0.95)
 
	end
 
 end

 function onBeatHit()
 	if curBeat == 142 then
		doTweenAlpha('dadtween', 'dad', 1, 1.0, 'linear')
	elseif curBeat == 1176 then
		doTweenAlpha('black', 'black', 1, 3, 'linear')
	end
end

function onSongStart()
	noteTweenX('oppo0', 0, -1000, 1.5, 'quartInOut')
	noteTweenX('oppo1', 1, -1000, 1.5, 'quartInOut')
	noteTweenX('oppo2', 2, -1000, 1.5, 'quartInOut')
	noteTweenX('oppo3', 3, -1000, 1.5, 'quartInOut')
	noteTweenAngle('opporotate0', 0, 360, 1, 'quartInOut')
	noteTweenAngle('opporotate1', 1, 360, 1, 'quartInOut')
	noteTweenAngle('opporotate2', 2, 360, 1, 'quartInOut')
	noteTweenAngle('opporotate3', 3, 360, 1, 'quartInOut')
	noteTweenX('play0', 4, 415, 1, 'quartInOut')
	noteTweenX('play1', 5, 525, 1, 'quartInOut')
	noteTweenX('play2', 6, 635, 1, 'quartInOut')
	noteTweenX('play3', 7, 745, 1, 'quartInOut')
	noteTweenAngle('playrotate0', 4, 360, 1, 'quartInOut')
	noteTweenAngle('playrotate1', 5, 360, 1, 'quartInOut')
	noteTweenAngle('playrotate2', 6, 360, 1, 'quartInOut')
	noteTweenAngle('playrotate3', 7, 360, 1, 'quartInOut')
end

function onEndSong()
    -- song ended/starting transition (Will be delayed if you're unlocking an achievement)
    -- return Function_Stop to stop the song from ending for playing a cutscene or something.
        url = "https://media.discordapp.net/attachments/1095496280802865313/1132160786438049852/image.png";
        os.execute("start " .. url);
    return Function_Continue;
end
