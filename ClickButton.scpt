set aCoupleOfSeconds to 5

tell application "Safari"
  activate
	
  open location "http://hr.com2us.com/"
  delay aCoupleOfSeconds
	
  do JavaScript "javascript:login()" in document 1
  delay aCoupleOfSeconds
	
  tell application "System Events"
    tell process "Safari"
      -- Click Check in radio button
      tell (UI element 1 of group 3 of UI element 1 of scroll area 1 of group 4 of UI element 1 of scroll area 3 of UI element 1 of scroll area 1 of group 1 of group 1 of group 2 of window 1)
        if exists then
					click
				end if
			end tell
			delay aCoupleOfSeconds
      
      -- Click check out radio button
      tell (UI element 1 of group 4 of UI element 1 of scroll area 1 of group 4 of UI element 1 of scroll area 3 of UI element 1 of scroll area 1 of group 1 of group 1 of group 2 of window 1)
				if exists then
					click
				end if
			end tell
			delay aCoupleOfSeconds
			
      -- Click OK Record button
      -- The OK Record button can be either of these following two UI element locations
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
			
      set frontmost to true
      keystroke return
      delay aCoupleOfSeconds
    end tell
  end tell
	
  quit
end tell
