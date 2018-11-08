--[[Script to use mouse keys as modifiers for G keys on old G930 headset. 12 + 3 hotkeys combos for 2 + 1 modifiers.]]
function OnEvent(event, arg)
	--[[if (event=="G_PRESSED" and arg==1) then
	OutputLogMessage("test"); end]]
	if(event=="G_PRESSED") then --(Gn&&(M4||M5))
		if(IsMouseButtonPressed(5) and not IsMouseButtonPressed(4))then --MKey-5
			if(arg==1)then
				PressAndReleaseKey("tab");
			elseif(arg==2)then	
				PressAndReleaseKey("down");
			elseif(arg==3)then
				PressAndReleaseKey("e");
			end								
		elseif(IsMouseButtonPressed(4) and not IsMouseButtonPressed(5))then --MKey-4
			if(arg==1)then
				PressAndReleaseKey("enter");
			elseif(arg==2)then
				PressAndReleaseKey("down");
			elseif(arg==3)then
				PressAndReleaseKey("e");
			end
		elseif(IsMouseButtonPressed(4) and IsMouseButtonPressed(5))then --MKey-4 & 5
			if(arg==1)then
				PressAndReleaseKey("1");
			elseif(arg==2)then
				PressAndReleaseKey("2");
			elseif(arg==3)then
				PressAndReleaseKey("3");
			end
		elseif(not IsMouseButtonPressed(4) and not IsMouseButtonPressed(5))then --None
			if(arg==1)then
				PressAndReleaseKey("left");
			elseif(arg==2)then
				PressAndReleaseKey("up");
			elseif(arg==3)then
				PressAndReleaseKey("right");
			end
		elseif(IsMouseButtonPressed(3))then --Middle
			if(arg==1)then
				PressAndReleaseKey("f1");
			elseif(arg==2)then
				PressAndReleaseKey("f2");
			elseif(arg==3)then
				PressAndReleaseKey("f3");
			end
		end
	end
end