tell application "Safari"
	activate
	set URL of document 1 to "http://ul.to/mmp20ooz"
	delay 5
	set myString to source of document 1
end tell
set newFile to POSIX file "/Users/congliu/Desktop/temporary.html"
open for access newFile with write permission
write myString to newFile
close access newFile
