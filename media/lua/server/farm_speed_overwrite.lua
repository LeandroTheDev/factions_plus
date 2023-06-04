function calcNextGrowing(nextGrowing, nextTime)
	if nextGrowing then
		return nextGrowing;
	end
    if SandboxVars.Farming == 1 then -- very fast
        nextTime = nextTime / 40;
    end
    if SandboxVars.Farming == 2 then -- fast
        nextTime = nextTime / 1.5;
    end
    if SandboxVars.Farming == 4 then -- slow
        nextTime = nextTime * 1.5;
    end
    if SandboxVars.Farming == 5 then -- very slow
        nextTime = nextTime * 3;
    end
	return SFarmingSystem.instance.hoursElapsed + nextTime;
end