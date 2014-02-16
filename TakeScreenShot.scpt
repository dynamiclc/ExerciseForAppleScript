-- Take screen shot
--   Save to desktop
--   File name use current date and time
set desktopPath to POSIX path of (path to desktop as string)
set currentDate to current date
set shellCommandToTakeScreenShot to "/usr/sbin/screencapture \"" & desktopPath & "Screen Shot " & currentDate & ".png\""
do shell script shellCommandToTakeScreenShot
