Config                 = {}
Config.DrawDistance    = 100.0
Config.MaxErrors       = 5
Config.SpeedMultiplier = 3.6
Config.Locale          = 'fr'

Config.Prices = {
	dmv         = 500,
	drive       = 2500,
	drive_bike  = 3000,
	drive_truck = 5000
}

Config.VehicleModels = {
	drive       = 'blista',
	drive_bike  = 'pcj',
	drive_truck = 'pounder2'
}

Config.SpeedLimits = {
	residence = 50,
	town      = 80,
	freeway   = 120
}

Config.Zones = {

	DMVSchool = {
		Pos   = {x = 226.46, y = 370.49, z = 105.11},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1
	},

	VehicleSpawnPoint = {
		Pos   = {x = 254.77, y = 377.69, z = 105.03, h = 76.44},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = -1
	}

}

Config.CheckPoints = {

	--{
	--	Pos = {x = 250.13, y = 380.25, z = 120,05},
	--	Action = function(playerPed, vehicle, setCurrentZoneType)
	--		DrawMissionText(_U('next_point_speed', Config.SpeedLimits['residence']), 5000)
	--	end
	--},

	{
		Pos = {x = 238.87, y = 383.42, z = 105.15},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 215.2, y = 366.81, z = 104.77},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			Citizen.CreateThread(function()
				DrawMissionText(_U('stop_for_ped'), 5000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(4000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('good_lets_cont'), 5000)
			end)
		end
	},

	{
		Pos = {x = 233.73, y = 347.55, z = 104.57},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town')

			Citizen.CreateThread(function()
				DrawMissionText(_U('stop_look_left', Config.SpeedLimits['town']), 5000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(6000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('good_turn_right'), 5000)
			end)
		end
	},

	{
		Pos = {x = 207.77, y = 220.52, z = 104.61},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('watch_traffic_lightson'), 5000)
		end
	},

	{
		Pos = {x = 184.04, y = 152.47, z = 101.32},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 123.82, y = -9.82, z = 66.68},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('stop_for_passing'), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
			FreezeEntityPosition(vehicle, true)
			Citizen.Wait(6000)
			FreezeEntityPosition(vehicle, false)
		end
	},

	{
		Pos = {x = -32.71, y = -754.6, z = 31.19},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 389.69, y = -864.02, z = 27.81},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	--{
		--Pos = {x = -453.790, y = -1444.726, z = 27.665},
		--Action = function(playerPed, vehicle, setCurrentZoneType)
			--setCurrentZoneType('freeway')

			--DrawMissionText(_U('hway_time', Config.SpeedLimits['freeway']), 5000)
			--PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
		--end
	--},

	{
		Pos = {x = 395.42, y = -1022.85, z = 27.88},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 250.95, y = -1043.29, z = 28.35},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 130.1, y = -1008.72, z = 28.41},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 41.33, y = -1114.13, z = 28.2},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -68.64, y = -1131.58, z = 24.77},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 413.48, y = 280.68, z = 102.07},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},



	--{
		--Pos = {x = 1225.759, y = -1948.792, z = 38.718},
		--Action = function(playerPed, vehicle, setCurrentZoneType)
			--setCurrentZoneType('town')
			--DrawMissionText(_U('in_town_speed', Config.SpeedLimits['town']), 5000)
		--end
	--},

	--{
		--Pos = {x = 1163.603, y = -1841.771, z = 35.679},
		--Action = function(playerPed, vehicle, setCurrentZoneType)
			--DrawMissionText(_U('gratz_stay_alert'), 5000)
			--PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
		--end
	--},

	{
		Pos = {x = 216.22, y = 370.14, z = 105.32},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			ESX.Game.DeleteVehicle(vehicle)
		end
	}

}
