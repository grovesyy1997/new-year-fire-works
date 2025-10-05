local function GetTime()
    local timestamp = os.time()
    local d = os.date("*t", timestamp).wday
    local h = tonumber(os.date("%H", timestamp))
    local m = tonumber(os.date("%M", timestamp))

    return {d = d, h = h, m = m}
end

CreateThread(function()
    local countdownStarted = false

    while true do
        Wait(1000) -- Check every second
        local time = GetTime()
        local date = os.date("*t")
        local second = tonumber(os.date("%S"))

        -- Start countdown at 23:59:50 on Dec 31
        if date.day == 31 and date.month == 12 and time.h == 23 and time.m == 59 and second == 50 and not countdownStarted then
            countdownStarted = true
            CreateThread(function()
                for i = 10, 1, -1 do
                    TriggerClientEvent('chat:addMessage', -1, {
                        args = { "^2[New Year Countdown]^0 " .. i }
                    })
                    Wait(1000)
                end
                FireworkShow()
            end)
        elseif date.day == 1 and date.month == 1 and time.h == 0 and time.m == 15 then
            print("^1Fireworkshow is over.^0")
            TriggerClientEvent("firework:stopFireworkShow", -1)
        end
    end
end)



local function FireworkShow()
    print("It's new year! Time to shine. Starting Fireworkshow....")
    TriggerClientEvent("firework:startFireworkShow", -1)
end

RegisterCommand("fireworkshow", function(source)
    print("^2Fireworkshow started manually.^0")
    TriggerClientEvent("firework:startFireworkShow", -1)
end)

RegisterNetEvent("firework:launch")
AddEventHandler("firework:launch", function(fireworkPos, fireworkType)
    TriggerClientEvent("firework:launch", -1, fireworkPos, fireworkType)
end)
