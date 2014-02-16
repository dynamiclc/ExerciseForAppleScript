set aCoupleOfSeconds to 5

tell application "Safari"
	open location "https://gmail.com/"
	delay aCoupleOfSeconds
	
	activate
	delay aCoupleOfSeconds
	set frontmost to true
	delay aCoupleOfSeconds
	
	tell application "System Events"
		tell process "Safari"
			-- Open Compose view
			keystroke "c"
			delay aCoupleOfSeconds
			
			-- Specify recipient			
			keystroke "dynamiclc@gmail.com"
			delay aCoupleOfSeconds
			keystroke return
			delay aCoupleOfSeconds
			
			-- Add Subject
			keystroke tab
			delay aCoupleOfSeconds
			keystroke tab
			delay aCoupleOfSeconds
			keystroke "Report"
			delay aCoupleOfSeconds
			
			-- Add Content
			keystroke tab
			delay aCoupleOfSeconds
			keystroke "a" using command down
			delay aCoupleOfSeconds
			keystroke "Done task one"
			delay aCoupleOfSeconds
			
			-- Click Send button
			keystroke tab
			delay aCoupleOfSeconds
			keystroke return
			delay aCoupleOfSeconds
		end tell
	end tell
	
	quit
	delay aCoupleOfSeconds
end tell
