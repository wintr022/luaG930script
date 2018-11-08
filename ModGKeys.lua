function OnEvent(event, arg)
	--if (event=="G_PRESSED" and arg==1) then
	--OutputLogMessage("test"); end
	if(event=="G_PRESSED" and IsMouseButtonPressed(4) or IsMouseButtonPressed(5)) then
		if(IsMouseButtonPressed(5))then
			if(arg==1)then
				PressAndReleaseKey("e");
			elseif(arg==2)then
				PressAndReleaseKey("down");
			elseif(arg==3)then
				PressAndReleaseKey("tab");
			end								
		elseif(IsMouseButtonPressed(4))then
			if(arg==1)then
				PressAndReleaseKey("left");
			elseif(arg==2)then
				PressAndReleaseKey("up");
			elseif(arg==3)then
				PressAndReleaseKey("right");
			end
		end
	end
end