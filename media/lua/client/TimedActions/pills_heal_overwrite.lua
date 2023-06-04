--Pills Heal function Overrwrite
local function overrideISTakePillActionPerform()
  local perform = ISTakePillAction.perform
	function ISTakePillAction:perform()
    if (self.item:getFullType() == 'Base.PillsVitamins') then
      local percentage = (SandboxVars.VitaminsHeal.Percentage or 10.0) * 4
      self.character:getBodyDamage():AddGeneralHealth(percentage);
    end
    perform(self)
	end
end

Events.OnGameStart.Add(overrideISTakePillActionPerform)
