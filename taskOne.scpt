set aCoupleOfSeconds to 3
set twoMinutes to 60 * 2
set oneHour to 60 * 60
set twoHours to 60 * 60 * 2
set fourHours to 60 * 60 * 4
set eightHours to 60 * 60 * 8
set tenHours to 60 * 60 * 10
set twelveHours to 60 * 60 * 12
set twentyFourHours to 60 * 60 * 24
set delayBeforeTaskOne to aCoupleOfSeconds
set delayBetweenTaskOneAndTwo to tenHours
set delayTimeOut to twentyFourHours

with timeout of delayTimeOut seconds
	tell application "Safari"
		-- Report before starting task one	
		tell application "Mail"
			set aNewMessage to make new outgoing message with properties {subject:"Report", content:"Will start task one.", visible:true}
			tell aNewMessage
				make new to recipient at end of to recipients with properties {address:"dynamiclc@gmail.com"}
				send
			end tell
		end tell
		
		-- Will begin task one
		activate
		delay aCoupleOfSeconds
		
		open location "http://domain_name.com/"
		-- set the URL of the front document to "http://domain_name.com/"
		delay aCoupleOfSeconds
		
		do JavaScript "javascript:login()" in document 1
		delay aCoupleOfSeconds
		
		tell application "System Events"
			tell process "Safari"
				-- Click check in radio button
				(*
			tell (UI element 1 of group 3 of UI element 1 of scroll area 1 of group 4 of UI element 1 of scroll area 3 of UI element 1 of scroll area 1 of group 1 of group 1 of group 2 of window 1)
				if exists then
					click
				end if
			end tell
			delay aCoupleOfSeconds
			*)
				
				-- Click check out radio button
				tell (UI element 1 of group 4 of UI element 1 of scroll area 1 of group 4 of UI element 1 of scroll area 3 of UI element 1 of scroll area 1 of group 1 of group 1 of group 2 of window 1)
					if exists then
						click
					end if
				end tell
				delay aCoupleOfSeconds
				
				tell (UI element 1 of group 5 of UI element 1 of scroll area 1 of group 4 of UI element 1 of scroll area 3 of UI element 1 of scroll area 1 of group 1 of group 1 of group 2 of window 1)
					if exists then
						click
					end if
				end tell
				delay aCoupleOfSeconds
				
				-- Click OK record button
				tell (UI element 1 of group 6 of UI element 1 of scroll area 1 of group 4 of UI element 1 of scroll area 3 of UI element 1 of scroll area 1 of group 1 of group 1 of group 2 of window 1)
					if exists then
						click
					end if
				end tell
				delay aCoupleOfSeconds
				
				tell (UI element 1 of group 7 of UI element 1 of scroll area 1 of group 4 of UI element 1 of scroll area 3 of UI element 1 of scroll area 1 of group 1 of group 1 of group 2 of window 1)
					if exists then
						click
					end if
				end tell
				delay aCoupleOfSeconds
				
			end tell
		end tell
		
		activate
		delay aCoupleOfSeconds
		set frontmost to true
		delay aCoupleOfSeconds
		
		-- Close the pop-up window by pressing OK button
		tell application "System Events"
			tell process "Safari"
				keystroke return
			end tell
		end tell
		
		activate
		delay aCoupleOfSeconds
		set frontmost to true
		delay aCoupleOfSeconds
		quit
		delay aCoupleOfSeconds
	end tell
end timeout

-- Report after done task one	
tell application "Mail"
	set aNewMessage to make new outgoing message with properties {subject:"Report", content:"Done task one.", visible:true}
	tell aNewMessage
		make new to recipient at end of to recipients with properties {address:"dynamiclc@gmail.com"}
		send
	end tell
end tell
