tell application "Safari"
	activate
	
	
	tell application "System Events"
		tell process "Safari"
			-- click check in radio button
			click UI element 1 of group 3 of UI element 1 of scroll area 1 of group 4 of UI element 1 of scroll area 3 of UI element 1 of scroll area 1 of group 1 of group 1 of group 2 of window 1
			-- click check out radio button
			-- click UI element 1 of group 5 of UI element 1 of scroll area 1 of group 4 of UI element 1 of scroll area 3 of UI element 1 of scroll area 1 of group 1 of group 1 of group 2 of window 1
			
			delay 2
			
			-- click OK record button
			click UI element 1 of group 6 of UI element 1 of scroll area 1 of group 4 of UI element 1 of scroll area 3 of UI element 1 of scroll area 1 of group 1 of group 1 of group 2 of window 1
		end tell
	end tell
end tell
