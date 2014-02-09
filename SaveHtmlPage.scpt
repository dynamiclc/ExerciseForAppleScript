-- osascript SaveHtmlPage.scpt "http://www.google.com"
on run arg
	tell application "Safari"
		activate
		log item 1 of arg
		set URL of document 1 to item 1 of arg
		delay 10
		set myString to source of document 1
	end tell
	set newFile to POSIX file "/Users/congliu/Desktop/temp.html"
	open for access newFile with write permission
	write myString to newFile
	close access newFile
end run
