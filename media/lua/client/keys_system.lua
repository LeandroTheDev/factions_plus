---@diagnostic disable: undefined-global, cast-local-type
require "Private"
local doorlocksystem = {}

--Construção da chamada da função
doorlocksystem.onFillWorldObjectContextMenu = function(playerId, context, worldobjects, test)
	
	local player = getSpecificPlayer(playerId)

	for a,door in ipairs(worldobjects) do

		if instanceof(door, 'IsoDoor') then

			local KeyMenu = context:addOption("Fechadura", worldobjects);
        	local subMenu = ISContextMenu:getNew(context);
        	doorlocksystem.context = context
	    	doorlocksystem.subMenu = subMenu
    		context:addSubMenu(KeyMenu, subMenu);

			if isClient() == false or isAdmin() then
				subMenu:addOption(getText('(Admin) Fazer Chave'), worldobjects, doorlocksystem.adminGetKey, player, door)
            else
                subMenu:addOption(getText('Fazer Chave'), worldobjects, doorlocksystem.userGetKey, player, door)
            end
		end
	end
end

--Função que entrega a chave ao usuario
doorlocksystem.userGetKey = function(worldobjects, player, door)

	if IsOwn(player) then
		local keycode = door:getKeyId()
		local doorkey = getPlayer():getInventory():AddItem('Base.Key1')
			doorkey:setKeyId(keycode)
			doorkey:setName('SafeHouse #' .. keycode)
			getPlayer():Say('Chave Feita')
	end
end

--Função que entrega a chave ao administrador
doorlocksystem.adminGetKey = function(worldobjects, player, door)
	local keycode = door:getKeyId()
	local doorkey = getPlayer():getInventory():AddItem('Base.Key1')
		doorkey:setKeyId(keycode)
		doorkey:setName('Chave #' .. keycode)
		getPlayer():Say('Chave Feita')
end


--Função secundaria que diz se ele está em uma safehouse
function IsOwn(player)
	if Private.GUI then
		local internal = Private.GUI.button.internal;
		if internal == "View" then
		return true
		end
		getPlayer():Say('Voce precisa ser o dono da SafeHouse')
		return false
	end
	getPlayer():Say('Voce precisa estar em uma SafeHouse')
	return false
end

--Chama a função quando o mundo for carregado
Events.OnFillWorldObjectContextMenu.Add(doorlocksystem.onFillWorldObjectContextMenu)