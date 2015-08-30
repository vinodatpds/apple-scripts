
tell application "Google Chrome"
	
	set today to current date
	
	set y to year of today as string
	set m to month of today as integer as string
	set d to day of today as integer as string
	
	if the length of m = 1 then
		set m to "0" & m
	end if
	if the length of d = 1 then
		set d1 to "0" & d
	end if
	
	--display dialog "http://epaperbeta.timesofindia.com/index.aspx?eid=31806&dt=" & y & m & d
	
	do shell script "open -a /Applications/Google\\ Chrome.app --args --incognito"
	make new tab at the end of tabs of window 1 with properties {URL:"http://epaperbeta.timesofindia.com/index.aspx?eid=31806&dt=" & y & m & d}
	
end tell