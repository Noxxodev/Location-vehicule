ESX = exports["es_extended"]:getSharedObject()


RegisterNetEvent('nox_loca:vehicule')
AddEventHandler('nox_loca:vehicule', function(prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()
	local min = Config.time / 60
	xPlayer.removeMoney(prix)
	--TriggerClientEvent('esx:showNotification', source, 'Tu viens de louer un véhicule pour ' ..min.. 'min.')
	--TriggerClientEvent('esx:showNotification', source, 'Tu viens de louer un véhicule pour ' ..prix.. '$.')
	TriggerClientEvent("s1n_notify:notify", xPlayer.source, {
		type = 'info',
		title = 'Location',
		message = 'Tu viens de louer un véhicule pour ' ..min.. 'min.',
		duration = 8000,
		theme = 'white',
		position = 'top-left'
	  })
	  TriggerClientEvent("s1n_notify:notify", xPlayer.source, {
		type = 'info',
		title = 'Location',
		message = 'Tu viens de louer un véhicule pour ' ..prix.. '$.',
		duration = 8000,
		theme = 'white',
		position = 'top-left'
	  })

end)