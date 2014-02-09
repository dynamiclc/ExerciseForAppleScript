-- osascript OpenWebpage.scpt "http://www.google.com"
on run arg
	tell application "Safari"
		if not (exists document 1) then reopen
		set URL of document 1 to item 1 of arg
		delay 5
		close window 1
	end tell
end run
