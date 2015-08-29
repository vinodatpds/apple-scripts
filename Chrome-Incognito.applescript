if application "Google Chrome" is running then
	tell application "Google Chrome"
		set windowCount to number of windows
		
		if (windowCount > 0) then
			-- set tabCount to number of tabs in window 1
			make new tab at the end of tabs of window 1
		else
			make new window with properties {mode:"incognito"}
		end if
	end tell
else
	do shell script "open -a /Applications/Google\\ Chrome.app --args --incognito"
end if

tell application "Google Chrome" to activate
