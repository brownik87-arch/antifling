local Players = game:GetService("Players")
local RS = game:GetService("RunService")

task.spawn(function()
    while true do
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character then
                local char = player.Character
                local hrp = char:FindFirstChild("HumanoidRootPart")
                if hrp then
                    -- Здесь логика: проверяем, есть ли у hrp сила, направленная на другого игрока
                    if hrp:IsA("BodyPosition") or hrp:IsA("BodyThrust") then
                        -- Блокируем попытку
                        player:Kick("Anti-fling active");
                    end
                end
            end
        end;
        RS.Heartbeat:Wait(); -- Обновляем каждый кадр
    end;
end)
