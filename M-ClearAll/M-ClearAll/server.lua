print("Created by FuriousFoxGG. - Made for Southern City Roleplay but released to the public. [https://discord.gg/MsnehQ2WwA]")

RegisterCommand(Config.ClearAll.Command, function(source, args, raw)
if IsPlayerAceAllowed(source, Config.ClearAll.Ace) then 
   if args[1] then 

if args[1]:lower() == "cars" then 
   TriggerClientEvent("M:ClearAll:Cars", -1)
   TriggerClientEvent('chat:addMessage', -1, {
      template = '<div style="padding: 0.3vw; margin: 0.5vw; background-color: rgba(76, 130, 186, 1); border-radius: 9px;">{0} <br> </div>',
      color = {255, 255, 255},
      multiline = false,
      args = {"[^1SYSTEM^7] " ..GetPlayerName(source).. " ^7Cleared Most Vehicles From the Server"}})
      TriggerEvent("M:SendToDisc", "A Staff Member Cleared All " ..args[1].. " From the map", "[" ..source.. "] " ..GetPlayerName(source).. " Cleared all " ..args[1].. " from the map.")

elseif args[1]:lower() == "props" then 
   TriggerClientEvent("M:ClearAll:Props", -1)
   TriggerClientEvent('chat:addMessage', -1, {
      template = '<div style="padding: 0.3vw; margin: 0.5vw; background-color: rgba(76, 130, 186, 1); border-radius: 9px;">{0} <br> </div>',
      color = {255, 255, 255},
      multiline = false,
      args = {"[^1SYSTEM^7] " ..GetPlayerName(source).. " ^7Cleared Most Props From the Server"}})
      TriggerEvent("M:SendToDisc", "A Staff Member Cleared All " ..args[1].. " From the map", "[" ..source.. "] " ..GetPlayerName(source).. " Cleared all " ..args[1].. " from the map.")

elseif args[1]:lower() == "peds" then
   TriggerClientEvent("M:ClearAll:Peds", -1)
   TriggerClientEvent('chat:addMessage', -1, {
      template = '<div style="padding: 0.3vw; margin: 0.5vw; background-color: rgba(76, 130, 186, 1); border-radius: 9px;">{0} <br> </div>',
      color = {255, 255, 255},
      multiline = false,
      args = {"[^1SYSTEM^7] " ..GetPlayerName(source).. " ^7Cleared Most Peds From the Server"}})
      TriggerEvent("M:SendToDisc", "A Staff Member Cleared All " ..args[1].. " From the map", "[" ..source.. "] " ..GetPlayerName(source).. " Cleared all " ..args[1].. " from the map.")
   
elseif args[1]:lower() == "all" then 
   TriggerClientEvent("M:ClearAll:All", -1)
   TriggerClientEvent('chat:addMessage', -1, {
      template = '<div style="padding: 0.3vw; margin: 0.5vw; background-color: rgba(76, 130, 186, 1); border-radius: 9px;">{0} <br> </div>',
      color = {255, 255, 255},
      multiline = false,
      args = {"[^1SYSTEM^7] " ..GetPlayerName(source).. " ^7Cleared Everything From the Server"}})
      TriggerEvent("M:SendToDisc", "A Staff Member Cleared All " ..args[1].. " From the map", "[" ..source.. "] " ..GetPlayerName(source).. " Cleared everything from the map.")
            end
         else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'ERROR: It appears you did not place any arguments in the command. USAGE: /clearall [PROPS, PEDS, CARS, ALL]'})
      end
   else
      TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'ERROR: You do not have permission to use this command.'})
      TriggerEvent("M:SendToDisc", "A Member executed a command without permission.", "[" ..source.. "] " ..GetPlayerName(source).. " Attempted to Clear All:" ..args[1].. " From the map without permission.")

   end
end)

RegisterNetEvent("M:Webhook")
AddEventHandler("M:Webhook", function(title, message)
    SendToDisc(title, message)
end)

function SendToDisc(title, msg)
    local embed = {}
    embed = {
        {
            ["color"] = 44270,
            ["title"] = "**".. title .."**",
            ["description"] = msg,
            ["footer"] = {
                ["text"] = Config.ClearAll.Discord.ServerName,
                ["icon_url"] = "https://i.imgur.com/Rmzmy9c.png",
            },
        }
    }
    PerformHttpRequest(Config.ClearAll.Discord.Webhook,
    function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end