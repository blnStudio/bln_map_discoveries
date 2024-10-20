local function ToggleAllDiscoveries(enable)
    for _, discovery in ipairs(DiscoveryData) do
        if enable then
            MapDiscoverRegion(discovery.hash)
        else
            MapDiscoverySetEnabled(discovery.hash, false)
        end
    end
    print(enable and "All discoveries enabled" or "All discoveries disabled")
end


Citizen.CreateThread(function ()
    ToggleAllDiscoveries(true) 
end)

AddEventHandler("onResourceStop", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end
    ToggleAllDiscoveries(false) 
end)