tell application "Google Chrome"
	--
	-- Set the index of window that you want to perform the job on
	--
	set windowIndex to 1
	set index of window windowIndex to 1
	
	--
	-- Set the delay time that prevents collision between actions
	--
	set timeDelayInSeconds to 0.1
	
	--
	-- Find out the number of tabs in window of Google Chrome whose index is windowIndex
	--
	set tabIndexMax to count tabs of (first window)
	
	--
	-- repeat with t in (tabs of (first window))
	--
	set i to 0
	repeat tabIndexMax times
		set i to i + 1
		
		delay timeDelayInSeconds
		tell application "Google Chrome" to activate
		delay timeDelayInSeconds
		
		--
		-- Retrieve the title of active tab in window of Google Chrome whose index is windowIndex
		--
		delay timeDelayInSeconds
		set s to (execute (first window)'s active tab javascript "document.title") as text
		delay timeDelayInSeconds
		
		--
		-- Copy title of current tab to clipboard as pure text
		--
		delay timeDelayInSeconds
		set the clipboard to s as text
		delay timeDelayInSeconds
		
		--
		-- Paste the title of current tab to Notes
		--
		delay timeDelayInSeconds
		tell application "Notes" to activate
		delay timeDelayInSeconds
		
		tell application "System Events"
			tell process "Notes"
				delay timeDelayInSeconds
				keystroke "v" using {command down, shift down, option down}
				delay timeDelayInSeconds
				
				-- Press return key whose key code is 36
				delay timeDelayInSeconds
				key code 36
				delay timeDelayInSeconds
				
			end tell
		end tell
		
		--
		-- Copy the URL of current tab
		--
		delay timeDelayInSeconds
		tell application "Google Chrome" to activate
		delay timeDelayInSeconds
		
		tell application "System Events"
			tell process "Google Chrome"
				delay timeDelayInSeconds
				keystroke "l" using command down
				delay timeDelayInSeconds
				keystroke "a" using command down
				delay timeDelayInSeconds
				keystroke "c" using command down
				delay timeDelayInSeconds
			end tell
		end tell
		
		--
		-- Paste the URL of current tab to Notes
		--
		delay timeDelayInSeconds
		tell application "Notes" to activate
		delay timeDelayInSeconds
		
		tell application "System Events"
			tell process "Notes"
				delay timeDelayInSeconds
				keystroke "v" using {command down, shift down, option down}
				delay timeDelayInSeconds
				
				-- Press return key whose key code is 36
				delay timeDelayInSeconds
				key code 36
				delay timeDelayInSeconds
				
				-- Press return key whose key code is 36
				delay timeDelayInSeconds
				key code 36
				delay timeDelayInSeconds
			end tell
		end tell
		
		--		
		-- Switch to next tab if there is a next tab on the right hand side
		--
		tell application "Google Chrome"
			delay timeDelayInSeconds
			if i ≤ tabIndexMax then set (active tab index of (first window)) to i
			delay timeDelayInSeconds
		end tell
		
	end repeat
end tell
