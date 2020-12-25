local ThatHugeFrame = CreateFrame("frame", "ThatHugeFrame")

ThatHugeFrame:RegisterEvent("CHAT_MSG_GUILD_ACHIEVEMENT")

lastTimeTriggered = 0

ThatHugeFrame:SetScript("OnEvent", function(self, event, ...)
    if(event == "CHAT_MSG_GUILD_ACHIEVEMENT") then
        local seconds = GetTime()
        if(seconds - lastTimeTriggered > 1) then
            SendChatMessage("I LOVE DEAD MEMES :)", "GUILD", nil)
            lastTimeTriggered = seconds
        end
    end
end)
