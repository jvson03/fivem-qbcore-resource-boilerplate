-- Initialise QBCore
QBCore = exports['qb-core']:GetCoreObject()

local PlayerJob = {}

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    local ped = PlayerPedId()
    local player = PlayerId()
    CreateThread(function()
        Wait(1000)
        QBCore.Functions.GetPlayerData(function(PlayerData)
            PlayerJob = PlayerData.job
        end)
    end)
end)