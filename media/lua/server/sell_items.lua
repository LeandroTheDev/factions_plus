---@diagnostic disable: undefined-global, deprecated
require "Private"

local ServerPointsData

local listings

--Return Money
function Recipe.OnGiveXP.Money(recipe, ingredients, result, player)
	ReturnPoints(player, 1)
end
--Return Money Command
GiveMoney = Recipe.OnGiveXP.Money

--Return Money Function
function ReturnPoints(player, value)
	local username = getPlayer():getUsername()
	sendClientCommand("ServerPoints", "add", {username, value})
	getPlayer():Say('Retornado + 1')
end

--Sell Carrot
function Recipe.OnGiveXP.Carrot(recipe, ingredients, result, player)
	SellItem(player, 7)
end
--Sell Potato
function Recipe.OnGiveXP.Potato(recipe, ingredients, result, player)
	SellItem(player, 9)
end
--Sell Strewberrie
function Recipe.OnGiveXP.Strewberrie(recipe, ingredients, result, player)
	SellItem(player, 4)
end
--Sell RedRadish
function Recipe.OnGiveXP.RedRadish(recipe, ingredients, result, player)
	SellItem(player, 8)
end
--Sell Cabbage
function Recipe.OnGiveXP.Cabbage(recipe, ingredients, result, player)
	SellItem(player, 7)
end
--Sell Tomato
function Recipe.OnGiveXP.Tomato(recipe, ingredients, result, player)
	SellItem(player, 10)
end
--Sell Broccoli
function Recipe.OnGiveXP.Broccoli(recipe, ingredients, result, player)
	SellItem(player, 9)
end

--Sells Commands
GiveCarrot = Recipe.OnGiveXP.Carrot
GivePotato = Recipe.OnGiveXP.Potato
GiveStrewberrie = Recipe.OnGiveXP.Strewberrie
GiveRedRadish = Recipe.OnGiveXP.RedRadish
GiveCabbage = Recipe.OnGiveXP.Cabbage
GiveTomato = Recipe.OnGiveXP.Tomato
GiveBroccoli = Recipe.OnGiveXP.Broccoli

--Sell Item
function SellItem(player, value)
	local username = getPlayer():getUsername()
	sendClientCommand("ServerPoints", "add", {username, value})
	getPlayer():Say('Vendido')
end
