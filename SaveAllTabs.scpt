tell application "Google Chrome"
	-- Find out the number of tabs in first window of Google Chrome
	set tabIndexMax to count tabs of (first window)
	
	set i to 0
	repeat with t in (tabs of (window 1))
		set i to i + 1
		
		delay 1
		tell application "Google Chrome" to activate
		delay 1
		
		-- Retrieve the title of active tab in first window of Google Chrome
		delay 1
		set s to (execute first window's active tab javascript "document.title") as text
		delay 1
		
		-- Copy title to clipboard as pure text
		delay 1
		set the clipboard to s as text
		delay 1
		
		-- Paste the title to Notes
		delay 1
		tell application "Notes" to activate
		delay 1
		
		tell application "System Events"
			tell process "Notes"
				delay 1
				keystroke "v" using {command down, shift down, option down}
				delay 1
				
				-- Press return key
				delay 1
				key code 36
				delay 1
				
			end tell
		end tell
		
		--
		-- Copy the URL of current tab
		--
		delay 1
		tell application "Google Chrome" to activate
		delay 1
		
		tell application "System Events"
			tell process "Google Chrome"
				delay 1
				keystroke "l" using command down
				delay 1
				keystroke "a" using command down
				delay 1
				keystroke "c" using command down
				delay 1
			end tell
		end tell
		
		--
		-- Paste the URL of current tab to Notes
		--
		delay 1
		tell application "Notes" to activate
		delay 1
		
		tell application "System Events"
			tell process "Notes"
				delay 1
				keystroke "v" using {command down, shift down, option down}
				delay 1
				
				-- Press return key
				delay 1
				key code 36
				delay 1
				
				-- Press return key
				delay 1
				key code 36
				delay 1
			end tell
		end tell
		
		tell application "Google Chrome"
			delay 1
			-- Switch to next tab if there is a next tab on the right hand side
			if i ≤ tabIndexMax then set (active tab index of (first window)) to i
			delay 1
		end tell
	end repeat
end tell
