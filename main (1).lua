

--================================[NON-EDITABLE]================================--
-- EMOJIS
bot_emoji     = "<:bot2:1141394354372624484>"
globe_emoji   = "<a:globe27:1140999010895794297>"
jar_emoji     = "<:jar2:1172337915628626000>"
gij_emoji     = "<:gij:1172337812033523782>"
mind_emoji    = "<:mind:1205897519427747840>"
seed_emoji    = "<:jar_seed:1172337956963496088>"
neutron_packE = "<:ntpack:1112284702821331034>"
neutron_gunE  = "<:ntgun:1112284718789038130>"
occulum_emoji = "<:stoc:1112284736610648164>"
goggles_emoji = "<:spgogg:1112284753815687219>"
boots_emoji   = "<:rboots:1112287628356767794>"
gems_emoji     = "<:gems:1205897485747490816>"
level_emoji   = "<:level:1205897360195198977>"
owner_info     = "<@"..discordID..">"


function whh(title, desc)

    wh = Webhook.new("https://discord.com/api/webhooks/1216020240459235389/ju3qJUt3hYCezG81t06rHl7-8TJO-0cuYo7pemkxhKmZ2m6BVmUtW6Hv05ze_1kYop-D")
    wh.username = "BUYER LOGS"
    wh.avatar_url = "https://static.wikia.nocookie.net/growtopia/images/5/5c/GhostA3.png/revision/latest?cb=20220325130942"
    wh.embed1.use = true
    wh.embed1.title = title
    wh.embed1.description = desc
    wh:send()
end

function webHookEmbed23()

    wh = Webhook.new(whURL)
    wh.content = "BUY SCRIPT? DM **owner discord:** <@529534628667719700>"
    wh.username = "AUTO GHOST SAFE"
    wh.avatar_url = "https://static.wikia.nocookie.net/growtopia/images/5/5c/GhostA3.png/revision/latest?cb=20220325130942"
    wh.embed1.use = true
    wh.embed1.title = "PLEASE BUY SCRIPT FIRST"
    wh.embed1.description = "YOU NEED TO BUY THIS SCRIPT (DON'T BUY FROM RESELLER) TO GAIN ACCESS"
    wh:send()
end

if discordID == "" or discordID == nil then
    error("Put your discordID")
end

bot = getBot()

hunt_worlds = {}
id_worlds = ""
messageID = ""

for id, name in pairs(bots) do
    if bot.name:lower() == id:lower() then
        hunt_worlds = name.hunt_world
        if name.door_id ~= nil then
            id_worlds = name.door_id
        end
        messageID = name.message_id
    end
end

relog_on = false

bot.move_interval = move_interval
bot.move_range = 3
bot.collect_range = 5
bot.object_collect_delay = 300
bot.collect_interval = 200

ghost_jar           = 3720
jar_seed            = 3721
ghost_in_a_jar      = 3722
mind_ghost_in_a_jar = 6080
neutron_pack        = 3714
neutron_gun         = 3716
occulum             = 4552
goggles             = 3710
rubber_boots        = 3718

current_tilex = 0
current_tiley = 0

jar_count = 0
ntg_count = 0
ntp_count = 0
seed_count = 0
gij_count = 0
mind_count = 0

move_range = 3

max_warp = 0

path_time = os.time()
path_time2 = os.time()
last_relog = os.time()
relog_interval = 1200
relog_interval2 = 1800
delayWarp = 7000

return_func = false
stop_program = false

save_worldName = save_world:match("(.+)|"):upper()
drop_worldName = drop_world:match("(.+)|"):upper()

last_x = 0
last_y = 0

data = {{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},{bot = "", epoch = 0},}


if ignoreGems then
    bot.ignore_gems = true
else
    bot.ignore_gems = false
end

function webHook(title, desc)

    if true then return end

    local foot = "bot: "..bot.name
    local script = [[
        $webHookUrl = "]]..whURL..[["
        [System.Collections.ArrayList]$embedArray = @()
        $color = '16777215'
        $title = ']]..title..[['
        $description = ']]..desc..[['
        $footers = ']]..foot..[['
        $embedObject = [PSCustomObject]@{
            color = $color
            title = $title
            description = $description
			footer =  [PSCustomObject]@{ 
                text = $footers 
            }
        }
        $embedArray.Add($embedObject)
        $payload = [PSCustomObject]@{
            embeds = $embedArray
        }
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
    ]]
    local pipe = io.popen('powershell -windowstyle Hidden -command -', 'w')
    pipe:write(script)
    pipe:close()
end

function webHookEmbed(desc)
    wh = Webhook.new(whURL)
    wh.username = "AUTO GHOST SAFE"
    wh.avatar_url = "https://static.wikia.nocookie.net/growtopia/images/5/5c/GhostA3.png/revision/latest?cb=20220325130942"
    wh.embed1.use = true
    wh.embed1.title = "AUTO GHOST SAFE"
    wh.embed1.description = desc
    wh:edit(messageID)
end

local function get_HDD0_serial()
    local pipe = io.popen"wmic diskdrive where(index=0) get serialnumber /value"
    local serial = (pipe:read"*a":match"SerialNumber=([^\r\n]*)" or ""):match"^(.-)%s*$"
    pipe:close()
    return tostring(serial)
end

stime = os.date("%t")
if script_id == 1 then
    whh("<@"..discordID..">","\nCurrent Use The Script\nStart Time :"..stime.."\nDon't forget to Rep owner SC in GTID")
end


botx = 0
boty = 0

function getposx()
    worldName = tostring(bot:getWorld().name)
    if worldName ~= "" and worldName ~= "EXIT" then
        if bot:getWorld():getLocal() then
            botx = math.floor(getBot():getWorld():getLocal().posx/32)
            return botx
        end
    end
    return botx
end

function getposy()
    worldName = tostring(bot:getWorld().name)
    if worldName ~= "" and worldName ~= "EXIT" then
        if bot:getWorld():getLocal() then
            boty = math.floor(getBot():getWorld():getLocal().posy/32)
            return boty
        end
    end
    return boty
end

function bot:findPath(x, y)

    if getposx() == x and getposy() == y then return end

    path = bot:getPath(x, y)

    if path[1] == nil then return end

    for i = 1, #path, move_range do
        bot:moveTile(path[i].x, path[i].y)
        sleep(move_interval)
    end
    bot:moveTile(path[#path].x, path[#path].y)
    sleep(move_interval)

    if not bot:isInTile(x,y) then return end

end

function OnVariantList(variant, netid)
    if variant:get(0):getString() == "OnConsoleMessage" then
        if variant:get(1):getString():lower():find("inaccessible") then
            nuked = true
        end
    end
end

function checkWorld(world)

    if not bot:isInWorld() then
        sleep(3000)
    end

    if bot:getWorld().name ~= world:match("(.+)|"):upper() then
        sleep(3000)
        bot:warp(world)
        sleep(6000)
    end

    if getposx() == nil or getposy() == nil then
        sleep(3000)
        bot:warp("EXIT")
        sleep(6000)
    end

    if bot:getWorld().name ~= world:match("(.+)|"):upper() then
        sleep(3000)
        bot:warp(world)
        sleep(6000)
    end

    if getposx() == nil or getposy() == nil then
        bot:disconnect()
        sleep(3000)
        while bot.status ~= BotStatus.online do
            sleep(10000)
        end
    end

    if bot:getWorld().name ~= world:match("(.+)|"):upper() then
        sleep(3000)
        bot:warp(world)
        sleep(6000)
    end

    if bot:getWorld():getTile(getposx(), getposy()).fg == 6 then
        sleep(3000)
        bot:warp(world)
        sleep(6000)
	end

    if bot:getInventory():getItemCount(48) > 0 then
			
    if bot:getInventory():getItem(48).isActive then
            bot:unwear(48)
            sleep(3000)
        end
    end

    if not bot:getWorld():getLocal() then
        bot:disconnect()
        sleep(10000)

        ReconnectGhost(world)
    end

end



function itemCount(id)
    return bot:getInventory():getItemCount(id)
end

function getGear()

    bot.auto_collect = false
    ReconnectStorage(save_world)

    for _, bots in pairs(getBots()) do
        local g = 1
        while bots:getWorld().name == save_worldName:upper() and bots.name ~= bot.name do
            sleep(3000)
            g = g + 1
            if g >= 10 then
                g = 1
                break
            end
        end
    end

    ReconnectStorage(save_world)
    checkWorld(save_world)

    if not bot:getWorld():getLocal() then
        bot:disconnect()
        sleep(10000)

        ReconnectStorage(save_world)
    end

    for _, gear in pairs(gears) do

        if itemCount(gear) == 1 then
            if not bot:getInventory():getItem(gear).isActive then
                sleep(500)
                bot:wear(gear)
                sleep(4000)
            end
        end

        while itemCount(gear) ~= 1 do
            ReconnectStorage(save_world)
            for _, obj in pairs(bot:getWorld():getObjects()) do
                if obj.id == gear then
                    if not bot:isInTile(math.floor(obj.x/32), math.floor(obj.y/32)) then
                        bot:findPath(math.floor(obj.x/32),math.floor(obj.y/32))
                        sleep(3000)
                    end
                end
            end

            if itemCount(gear) < 1 then
                bot:collect(2, 500)
                sleep(1000)
            end

            if itemCount(gear) > 1 then
                sleep(500)
                bot:drop(gear, bot:getInventory():getItemCount(gear) - 1)
                sleep(4000)
            end

            if itemCount(gear) > 0 then
                if not bot:getInventory():getItem(gear).isActive then
                    sleep(500)
                    bot:wear(gear)
                    sleep(4000)
                end
            end

            sleep(100)
        end
    end

    for id, count in pairs(getBot():getWorld().growscan:getObjects()) do
        if id == neutron_pack then ntp_count = count end
        if id == neutron_gun then ntg_count = count end
        if id == occulum then oc_count = count end
        if id == goggles then gogg_count = count end
        if id == rubber_boots then rb_count = count end
    end

    webHookEmbed(
        [[STATUS BOT ]]..owner_info..[[
		
	    ---------- Bot Info ----------
        ]]..bot_emoji..[[ Name: ]]..bot.name..[[
        
        ]]..getStatusEmoji(bot)..[[ Status: ]]..getStatus(bot)..[[
        
        ]]..level_emoji..[[ Level: ]]..bot.level..[[
        
        ]]..gems_emoji..[[ Gems: ]]..bot.gem_count..[[
		
        ]]..globe_emoji..[[ World: ]]..bot:getWorld().name..[[

        --------- Stock Info ---------
        ]]..jar_emoji..[[ Jar: ]]..jar_count..[[
        
        ]]..gij_emoji..[[ Gij: ]]..gij_count..[[
        
        ]]..mind_emoji..[[Mind: ]]..mind_count..[[
		
        ]]..seed_emoji..[[ Seed: ]]..seed_count..[[
        
        ]]..neutron_packE..[[ Pack: ]]..ntp_count..[[
            
        ]]..neutron_gunE..[[ Gun: ]]..ntg_count..[[

        --------- Backpack Info ---------
        ]]..jar_emoji..[[ Jar: ]]..itemCount(ghost_jar)..[[
        
        ]]..gij_emoji..[[ Gij: ]]..itemCount(ghost_in_a_jar)..[[
        
        ]]..mind_emoji..[[Mind: ]]..itemCount(mind_ghost_in_a_jar)..[[
		
        ]]..seed_emoji..[[ Seed: ]]..itemCount(jar_seed)..[[
		

        edited <t:]]..os.time()..[[:R>
        ]]
        )
end

function whhs(title, desc)

    wh = Webhook.new(whCount)
    wh.username = "COUNT LOGS"
    wh.avatar_url = "https://static.wikia.nocookie.net/growtopia/images/5/5c/GhostA3.png/revision/latest?cb=20220325130942"
    wh.embed1.use = true
    wh.embed1.title = title
    wh.embed1.description = desc
    wh:send()
end


function getJar()

    bot.auto_collect = false

    ReconnectStorage(save_world)
    checkWorld(save_world)

    if not bot:getWorld():getLocal() then
        bot:disconnect()
        sleep(10000)

        ReconnectStorage(save_world)
    end

    if bot:getWorld().name == save_worldName then
        jar_count = 0
        ReconnectStorage(save_world)
        for id, obj in pairs(getBot():getWorld():getObjects()) do
            if obj.id == ghost_jar then
                jar_count = jar_count + obj.count
            end
        end
    else
        if not bot:isInWorld() then
            sleep(3000)
        end
        sleep(3000)
        bot:warp(save_world)
        sleep(6000)
        if bot:getWorld():getTile(getposx(), getposy()).fg == 6 then
            sleep(3000)
            bot:warp(save_world)
            sleep(6000)
        end
        jar_count = 5
        ReconnectStorage(save_world)
        for id, obj in pairs(getBot():getWorld():getObjects()) do
            if obj.id == ghost_jar then
                jar_count = jar_count + obj.count
            end
        end
    end

    ReconnectStorage(save_world)

    if jar_count < 1 then
     webHookEmbed(
        [[STATUS BOT ]]..owner_info..[[
		
	    ---------- Bot Info ----------
        ]]..bot_emoji..[[ Name: ]]..bot.name..[[
        
        ]]..getStatusEmoji(bot)..[[ Status: ]]..getStatus(bot)..[[
        
        ]]..level_emoji..[[ Level: ]]..bot.level..[[
        
        ]]..gems_emoji..[[ Gems: ]]..bot.gem_count..[[
		
        ]]..globe_emoji..[[ World: ]]..bot:getWorld().name..[[

        --------- Stock Info ---------
        ]]..jar_emoji..[[ Jar: ]]..jar_count..[[
        
        ]]..gij_emoji..[[ Gij: ]]..gij_count..[[
        
        ]]..mind_emoji..[[Mind: ]]..mind_count..[[
		
        ]]..seed_emoji..[[ Seed: ]]..seed_count..[[
        
        ]]..neutron_packE..[[ Pack: ]]..ntp_count..[[
            
        ]]..neutron_gunE..[[ Gun: ]]..ntg_count..[[

        --------- Backpack Info ---------
        ]]..jar_emoji..[[ Jar: ]]..itemCount(ghost_jar)..[[
        
        ]]..gij_emoji..[[ Gij: ]]..itemCount(ghost_in_a_jar)..[[
        
        ]]..mind_emoji..[[Mind: ]]..itemCount(mind_ghost_in_a_jar)..[[
		
        ]]..seed_emoji..[[ Seed: ]]..itemCount(jar_seed)..[[
		

        edited <t:]]..os.time()..[[:R>
        ]]
        )
        checkWorld(drop_world)

        ReconnectStorage(drop_world)
        bot.auto_collect = false
        if itemCount(jar_seed) > 1 or itemCount(ghost_in_a_jar) > 1 or itemCount(6080) > 1 then
        for _, tile in pairs(bot:getWorld():getTiles()) do
            if tile.fg == tile_id then

                ReconnectStorage(drop_world)
                if current_tilex == 0 and current_tiley == 0 then
                    current_tilex = tile.x+1
                    current_tiley = tile.y
                end

                bot:findPath(current_tilex, current_tiley)

                sleep(2000)
                bot:drop(jar_seed, itemCount(jar_seed))
                sleep(4000)
                bot:drop(ghost_in_a_jar, itemCount(ghost_in_a_jar))
                sleep(4000)
                bot:drop(6080, itemCount(6080))
                sleep(4000)
                break
            end
            if tile.bg == tile_id then

                ReconnectStorage(drop_world)
                if current_tilex == 0 and current_tiley == 0 then
                    current_tilex = tile.x+1
                    current_tiley = tile.y
                end

                bot:findPath(current_tilex, current_tiley)

                sleep(2000)
                bot:drop(jar_seed, itemCount(jar_seed))
                sleep(4000)
                bot:drop(ghost_in_a_jar, itemCount(ghost_in_a_jar))
                sleep(4000)
                bot:drop(6080, itemCount(6080))
                sleep(4000)
                break
            end
        end
        end

        ReconnectStorage(drop_world)
        while itemCount(jar_seed) > 1 do
            bot:moveRight()
            sleep(2000)
            current_tilex = getposx()
            current_tiley = getposy()
            sleep(1000)
            bot:drop(jar_seed, itemCount(jar_seed) - 1)
            sleep(4000)
        end

        bot.auto_reconnect = false
        bot:disconnect()
        sleep(5000)
    webHookEmbed(
        [[STATUS BOT ]]..owner_info..[[
		
	    ---------- Bot Info ----------
        ]]..bot_emoji..[[ Name: ]]..bot.name..[[
        
        ]]..getStatusEmoji(bot)..[[ Status: ]]..getStatus(bot)..[[
        
        ]]..level_emoji..[[ Level: ]]..bot.level..[[
        
        ]]..gems_emoji..[[ Gems: ]]..bot.gem_count..[[
		
        ]]..globe_emoji..[[ World: ]]..bot:getWorld().name..[[

        --------- Stock Info ---------
        ]]..jar_emoji..[[ Jar: ]]..jar_count..[[
        
        ]]..gij_emoji..[[ Gij: ]]..gij_count..[[
        
        ]]..mind_emoji..[[Mind: ]]..mind_count..[[
		
        ]]..seed_emoji..[[ Seed: ]]..seed_count..[[
        
        ]]..neutron_packE..[[ Pack: ]]..ntp_count..[[
            
        ]]..neutron_gunE..[[ Gun: ]]..ntg_count..[[

        --------- Backpack Info ---------
        ]]..jar_emoji..[[ Jar: ]]..itemCount(ghost_jar)..[[
        
        ]]..gij_emoji..[[ Gij: ]]..itemCount(ghost_in_a_jar)..[[
        
        ]]..mind_emoji..[[Mind: ]]..itemCount(mind_ghost_in_a_jar)..[[
		
        ]]..seed_emoji..[[ Seed: ]]..itemCount(jar_seed)..[[
		

        edited <t:]]..os.time()..[[:R>
        ]]
        )
        etime = os.date("%t")
		 whh("<@"..discordID..">","\nnow the program will stop \nEnd Time :"..etime.."\nDon't forget to Rep owner SC in GTID")
        stop_program = true
        return
    end


    ReconnectStorage(save_world)
    for _, obj in pairs(bot:getWorld():getObjects()) do

        if obj.id == ghost_jar then
            sleep(500)
            path = bot:getPath(math.floor(obj.x/32) + 1,math.floor(obj.y/32))
            path2 = bot:getPath(math.floor(obj.x/32),math.floor(obj.y/32))
            sleep(100)
            if path[1] ~= nil and path2[1] ~= nil then
                bot:findPath(math.floor(obj.x/32), math.floor(obj.y/32))
                sleep(2000)
            end
            bot.collect_range = 2
            sleep(100)
            bot.auto_collect = true
            sleep(500)
            bot.auto_collect = false
            sleep(2000)
            if bot:getInventory():getItemCount(ghost_jar) > max_jar then
                bot:drop(ghost_jar, itemCount(ghost_jar) - max_jar)
                sleep(4000)
            end


            if bot:getInventory():getItemCount(ghost_jar) == max_jar then break end
        end
    end

    ReconnectStorage(save_world)
    for id, count in pairs(getBot():getWorld().growscan:getObjects()) do
        if id == neutron_pack then ntp_count = count end
        if id == neutron_gun then ntg_count = count end
        if id == occulum then oc_count = count end
        if id == goggles then gogg_count = count end
        if id == rubber_boots then rb_count = count end
        if id == ghost_jar then jars_count = count end
    end

    webHookEmbed(
        [[STATUS BOT ]]..owner_info..[[
		
	    ---------- Bot Info ----------
        ]]..bot_emoji..[[ Name: ]]..bot.name..[[
        
        ]]..getStatusEmoji(bot)..[[ Status: ]]..getStatus(bot)..[[
        
        ]]..level_emoji..[[ Level: ]]..bot.level..[[
        
        ]]..gems_emoji..[[ Gems: ]]..bot.gem_count..[[
		
        ]]..globe_emoji..[[ World: ]]..bot:getWorld().name..[[

        --------- Stock Info ---------
        ]]..jar_emoji..[[ Jar: ]]..jar_count..[[
        
        ]]..gij_emoji..[[ Gij: ]]..gij_count..[[
        
        ]]..mind_emoji..[[Mind: ]]..mind_count..[[
		
        ]]..seed_emoji..[[ Seed: ]]..seed_count..[[
        
        ]]..neutron_packE..[[ Pack: ]]..ntp_count..[[
            
        ]]..neutron_gunE..[[ Gun: ]]..ntg_count..[[

        --------- Backpack Info ---------
        ]]..jar_emoji..[[ Jar: ]]..itemCount(ghost_jar)..[[
        
        ]]..gij_emoji..[[ Gij: ]]..itemCount(ghost_in_a_jar)..[[
        
        ]]..mind_emoji..[[Mind: ]]..itemCount(mind_ghost_in_a_jar)..[[
		
        ]]..seed_emoji..[[ Seed: ]]..itemCount(jar_seed)..[[
		

        edited <t:]]..os.time()..[[:R>
        ]]
        )

    if script_id == 1 then
        if jars_count > 1 then
            whhs(save_worldName, jar_emoji.." : **"..jars_count.."**\n<@"..discordID..">")
        end
    end

end

function dropItem()

    if itemCount(ghost_in_a_jar) < save_countGIJ and itemCount(jar_seed) < save_countseed and itemCount(6080) < save_countseed then return end
    ReconnectStorage(drop_world)

    if itemCount(ghost_in_a_jar) >= save_countGIJ then
        itemToDrop = ghost_in_a_jar
    elseif itemCount(jar_seed) >= save_countseed then
        itemToDrop = jar_seed
    elseif itemCount(6080) >= save_countseed then
        itemToDrop = 6080
    end

    bot.auto_collect = false

    checkWorld(drop_world)
    ReconnectStorage(drop_world)

    if not bot:getWorld():getLocal() then
        bot:disconnect()
        sleep(10000)

        ReconnectStorage(drop_world)
    end

    ReconnectStorage(drop_world)
    for _, tile in pairs(bot:getWorld():getTiles()) do
        if tile.fg == tile_id then

            ReconnectStorage(drop_world)
            if current_tilex == 0 and current_tiley == 0 then
                current_tilex = tile.x+1
                current_tiley = tile.y
            end

            bot:findPath(current_tilex, current_tiley)

            sleep(2000)
            bot:drop(itemToDrop, itemCount(itemToDrop) - 1)
            sleep(4000)
            break
        end
        if tile.bg == tile_id then

            ReconnectStorage(drop_world)
            if current_tilex == 0 and current_tiley == 0 then
                current_tilex = tile.x+1
                current_tiley = tile.y
            end

            bot:findPath(current_tilex, current_tiley)

            sleep(2000)
            bot:drop(itemToDrop, itemCount(itemToDrop) - 1)
            sleep(4000)
            break
        end
    end

    ReconnectStorage(drop_world)
    while itemCount(itemToDrop) > 1 do
        bot:moveRight()
        sleep(2000)
        current_tilex = getposx()
        current_tiley = getposy()
        sleep(1000)
        bot:drop(itemToDrop, itemCount(itemToDrop) - 1)
        sleep(4000)
    end

    ReconnectStorage(drop_world)

    for id, count in pairs(getBot():getWorld().growscan:getObjects()) do
        if id == ghost_in_a_jar then gij_count = count end
        if id == jar_seed then seed_count = count end
	if id == mind_ghost_in_a_jar then mind_count = count end
    end

    webHookEmbed(
        [[STATUS BOT ]]..owner_info..[[
		
	    ---------- Bot Info ----------
        ]]..bot_emoji..[[ Name: ]]..bot.name..[[
        
        ]]..getStatusEmoji(bot)..[[ Status: ]]..getStatus(bot)..[[
        
        ]]..level_emoji..[[ Level: ]]..bot.level..[[
        
        ]]..gems_emoji..[[ Gems: ]]..bot.gem_count..[[
		
        ]]..globe_emoji..[[ World: ]]..bot:getWorld().name..[[

        --------- Stock Info ---------
        ]]..jar_emoji..[[ Jar: ]]..jar_count..[[
        
        ]]..gij_emoji..[[ Gij: ]]..gij_count..[[
        
        ]]..mind_emoji..[[Mind: ]]..mind_count..[[
		
        ]]..seed_emoji..[[ Seed: ]]..seed_count..[[
        
        ]]..neutron_packE..[[ Pack: ]]..ntp_count..[[
            
        ]]..neutron_gunE..[[ Gun: ]]..ntg_count..[[

        --------- Backpack Info ---------
        ]]..jar_emoji..[[ Jar: ]]..itemCount(ghost_jar)..[[
        
        ]]..gij_emoji..[[ Gij: ]]..itemCount(ghost_in_a_jar)..[[
        
        ]]..mind_emoji..[[Mind: ]]..itemCount(mind_ghost_in_a_jar)..[[
		
        ]]..seed_emoji..[[ Seed: ]]..itemCount(jar_seed)..[[
		

        edited <t:]]..os.time()..[[:R>
        ]]
        )

    if script_id == 1 then
        if seed_count > 1 then
            whhs(drop_worldName, gij_emoji.." : **"..gij_count.."** \n"..seed_emoji.." : **"..seed_count.."** \n"..mind_emoji.." : **"..mind_count.."** \n<@"..discordID..">")
        end
    end
end

function botInfo(title, desc)

    wh = Webhook.new(whSt)
    wh.username = "Status"
    wh.avatar_url = "https://static.wikia.nocookie.net/growtopia/images/5/5c/GhostA3.png/revision/latest?cb=20220325130942"
    wh.embed1.use = true
    wh.embed1.title = title
    wh.embed1.description = desc
    wh:send()
end

function checkItems(world)

    ReconnectGhost(world)
    for _, gear in pairs(gears) do

        if itemCount(gear) ~= 1 then
            getGear()
        else
            if not bot:getInventory():getItem(gear).isActive then
                bot:wear(gear)
                sleep(3000)
            end
        end
    end

    if itemCount(ghost_jar) < 1 or itemCount(ghost_jar) > max_jar then
        getJar()
    end

    if stop_program then return end

    ReconnectGhost(world)

    if not bot:isInWorld() then
        sleep(3000)
    end

    if bot:getWorld().name ~= world:upper() then
        sleep(3000)
        bot:warp(world.."|"..id_worlds)
        sleep(6000)
    end

    ReconnectGhost(world)

    if not bot:isInWorld() then
        sleep(3000)
    end

    if bot.status ~= 1 then return end
    if getposx() == nil or getposy() == nil then
        sleep(3000)
        bot:warp("EXIT")
        sleep(6000)
    end

    if not bot:isInWorld() then
        sleep(3000)
    end
    
    if bot:getWorld().name ~= world:upper() then
        sleep(3000)
        bot:warp(world.."|"..id_worlds)
        sleep(6000)
    end

    ReconnectGhost(world)

    if bot.status ~= 1 then return end
    if getposx() == nil or getposy() == nil then
        bot:disconnect()
        sleep(3000)
        while bot.status ~= BotStatus.online do
            sleep(10000)
        end
    end

    if not bot:getWorld():getLocal() then
        bot:disconnect()
        sleep(10000)

        ReconnectGhost(world)
    end
end

function getStatusEmoji(bots)
    if bots.status == BotStatus.online then
        return "<a:online:1092291689147797565>" 
    else
        return "<a:offline:1092291705455247430>"
    end
end


function getStatus(bots)
    if bots.status == BotStatus.offline then return "offline" end
    if bots.status == BotStatus.online then return "online" end
    if bots.status == BotStatus.account_banned then return "account_banned" end
    if bots.status == BotStatus.location_banned then return "location_banned" end
    if bots.status == BotStatus.version_update then return "version_update" end
    if bots.status == BotStatus.error_connecting then return "<:Error45:1098980581682983034>" end
    if bots.status == BotStatus.maintenance  then return "maintenance" end
    if bots.status == BotStatus.too_many_login then return "too_many_login" end
    if bots.status == BotStatus.server_overload then return "server_overload" end
    if bots.status == BotStatus.error_connecting then return "Error_Connecting" end
    if bots.status == BotStatus.changing_subserver then return "Changing_Subserver" end
    if bots.status == BotStatus.high_load then return "High_Load" end
    if bots.status == BotStatus.server_busy then return "Server Busy" end
    return "unknown"
end

bots_worlds = {}
bots_act = {}
wh_interval = 30
last_wh = os.time()
first_bot = ""

function checkStatus()

    cont = ""
    cont2 = ""
    for index, bots in pairs(getBots()) do

        if bots_worlds[index] == nil then
            bots_worlds[index] = bots:getWorld().name
        end

        if bots_act[index] == nil then
            bots_act[index] = os.time(os.date("*t"))
        end

        if bots_worlds[index] ~= bots:getWorld().name then
            bots_worlds[index] = bots:getWorld().name
            bots_act[index] = os.time(os.date("*t"))
        end

        cont = cont.."----------\n**"..bots.name.."**: \nstatus: "..getStatus(bots).."\nlast act: ".."<t:"..bots_act[index]..":R>".."\n"
        cont2 = cont2..bots.name.."\n"..bots_act[index].."\n"

        if bots.name == bot.name then
            if os.time(os.date("*t")) - bots_act[index] >= 600 then return_func = true end
        end

        if bots.status == BotStatus.online and first_bot == "" then
            first_bot = bots.name
        elseif bots.status ~= BotStatus.online and first_bot == bots.name then
            first_bot = ""
        end
    end

    if first_bot == bot.name and os.time() > last_wh + wh_interval then
        last_wh = os.time()

        local file = io.open("myfile.txt", "w")

        if file ~= nil then
            file:write(cont2)
            file:close()
        else
            io.output("myfile.txt")
            io.close()
        end

        webHook("STATUS", cont)
    end
end

function isRelog()

    local file = io.open("myfile.txt", "r")

    if file ~= nil then

        i = 1
        x = 1
        for line in file:lines() do
            if i % 2 ~= 0 then
                data[x].bot = line
            else
                data[x].epoch = line
                x = x + 1
            end
            i = i + 1
        end

        file:close()
    else
        io.output("myfile.txt")
        io.close()
    end

    for index, val in pairs(data) do
        if val.bot == bot.name then
            if tonumber(val.epoch) < os.time() + relog_interval then
                return
            end
        end
    end

    for index, val in pairs(data) do
        if val.bot == bot.name then
            if tonumber(val.epoch) >= os.time() + relog_interval then
                webHook("20 mins afk", "relogging in...")
                bot:disconnect()
                sleep(5000)
                sleep(10000)
                while bot.status ~= BotStatus.online do
                    sleep(10000)
                end
            end
        end
    end
end

function timeRelog()

    if relog_on then
        if os.time() >= last_relog + relog_interval2 then
            last_relog = os.time()
            bot:disconnect()
            sleep(5000)
            sleep(10000)
            while bot.status ~= BotStatus.online do
                sleep(10000)
            end
        end
    end

end

xd = 0
yd = 0
gg = false

function hunt(world)

    if stop_program then return end

    ReconnectGhost(world)


    dropItem()
    checkItems(world)

    if not bot:getWorld():getLocal() then
        bot:disconnect()
        sleep(10000)

        ReconnectGhost(world)
		
    end

    buyPack()
    checkItems(world)
    bot.auto_collect = true

    npc_count = 0
    for _, npc in pairs(bot:getWorld():getNPCs()) do
        if npc.type == 1 or npc.type == 7 then
            npc_count = npc_count + 1
        end
    end

    if npc_count < 2 then return end

    local start_time = os.time()
    while true do

        if bot.status ~= BotStatus.online then return end

        dropItem()
        checkItems(world)
        if stop_program then return end
        checkStatus()
        isRelog()
        timeRelog()

        bot.collect_range = 5
        bot.auto_collect = true

        if return_func then
            bot:disconnect()
            sleep(5000)
            bot:connect()
            sleep(10000)
            return_func = false
            return
        end

        if stop_program then return end

        if not bot:getWorld():getLocal() then
            bot.auto_reconnect = false
            sleep(500)
            bot:disconnect()
            sleep(10000)
            ReconnectGhost(world)
            bot.auto_reconnect = true
        end

        if os.time() > start_time + 30 then return end

        npc_count = 0
        for _, npc in pairs(bot:getWorld():getNPCs()) do
            if npc.type == 1 or npc.type == 7 then
                npc_count = npc_count + 1
            end
        end

        if npc_count < 2 then break end

        for _, npc in pairs(bot:getWorld():getNPCs()) do

            if bot.status ~= 1 then return end

            dropItem()
            checkItems(world)
            if stop_program then return end
            isRelog()
            timeRelog()

            bot.collect_range = 5
            bot.auto_collect = true

            if stop_program then return end

            local breakOuterLoop = false

            if bot.status ~= 1 then return end

            if not bot:getWorld():getLocal() then
                bot.auto_reconnect = false
                sleep(500)
                bot:disconnect()
                sleep(10000)
                ReconnectGhost(world)
                bot.auto_reconnect = true
            end

            if catch_mind then
                if npc.type == 1 or npc.type == 12 then

                    if auto_leave then
                        for _, player in pairs(bot:getWorld():getPlayers()) do
                            for _, exempt in pairs(exempted) do
                                if player.name:lower() ~= exempt:lower() and (player.name:lower() ~= bot.name:lower() and player.name:lower():match("(.+)_") ~= bot.name:lower()) then return end
                            end
                        end
                    end

                    if not bot:getWorld():getNPC(npc.id) then break end
                    local npc_currx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                    local npc_curry = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)

                    if npc_currx == nil or npc_curry == nil then break end
                    if npc_curry >= 55 then goto continue end

                    if bot:getWorld():getTile(npc_currx, npc_curry).fg == 0 and bot:getWorld():getTile(npc_currx, npc_curry + 1).fg ~= 0 and bot:getWorld():getTile(npc_currx, npc_curry + 3).fg ~= 0 and bot:getWorld():getTile(npc_currx, npc_curry + 2).fg == 0 then
                        if os.time() < path_time + 3 then goto continue end

                        bot:findPath(npc_currx, npc_curry)
                        path_time = os.time()
                        max = 1
                        while not bot:isInTile(npc_currx, npc_curry) do
                            sleep(500)
                            max = max + 1

                            if max >= 11 then break end
                        end
                    end

                    local placed = false

                    if getposx() ~= npc_currx or getposy() ~= npc_curry then goto continue end

                    start_time = os.time()
                    max_place = 0
                    iterato = 1
                    iterator2 = 1
                    while true do

                        max_fp = 0
                        if bot.status ~= BotStatus.online then return end
                        if not bot:getWorld():getNPC(npc.id) then break end

                        if math.floor(math.sqrt((getposx() - math.floor(bot:getWorld():getNPC(npc.id).x / 32)) ^ 2 + (getposy() - math.floor(bot:getWorld():getNPC(npc.id).y / 32)) ^ 2)) > 4 then
                            while true do

                                if bot.status ~= BotStatus.online then return end

                                if not bot:getWorld():getNPC(npc.id) then break end
                                local currx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                                local curry = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)

                                if currx == nil or curry == nil then goto continue end
                                if curry >= 55 then goto continue end

                                if bot.status ~= 1 then return end
                                if bot:getWorld():getTile(npc_currx, npc_curry).fg == 0 and bot:getWorld():getTile(currx, curry + 1).fg ~= 0 and bot:getWorld():getTile(currx, curry + 3).fg ~= 0 and bot:getWorld():getTile(currx, curry + 2).fg == 0 then

                                    if os.time() < path_time + 3 then goto cont end

                                    bot:findPath(currx, curry)
                                    max_fp = max_fp + 1
                                    path_time = os.time()
                                    if max_fp >= 2 then
                                        max_fp = 0
                                        goto breakLoop
                                    end
                                    max = 1
                                    while not bot:isInTile(currx, curry) do
                                        sleep(500)
                                        max = max + 1
                                        if max >= 11 then break end
                                    end
                                end
                                if bot.status ~= 1 then return end
                                if getposx() == currx and getposy() == curry then break end
                                ::cont::
                                iterator2 = iterator2 + 1

                                if iterator2 >= 3000 then
                                    iterator2 = 1
                                    break
                                end
                                sleep(100)
                            end
                        end

                        if not bot:getWorld():getNPC(npc.id) then break end

                        if bot.status ~= 1 then return end
                        xx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                        yy = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)
                        if math.floor(math.sqrt((getposx() - xx) ^ 2 + (getposy() - yy) ^ 2)) <= 4 then
                            bot:hit(xx, yy)
                            sleep(250)
                        end

                        if bot.status ~= 1 then return end
                        if math.floor(math.sqrt((getposx() - math.floor(bot:getWorld():getNPC(npc.id).x / 32)) ^ 2 + (getposy() - math.floor(bot:getWorld():getNPC(npc.id).y / 32)) ^ 2)) <= 2 and not placed then
                            if bot:getWorld():getTile(getposx(), getposy() + 3).fg ~= 0 and bot:getWorld():getTile(getposx(), getposy() + 2).fg == 0 then
                                if math.floor(math.sqrt((getposx() - math.floor(bot:getWorld():getNPC(npc.id).destx / 32)) ^ 2 + (getposy() - math.floor(bot:getWorld():getNPC(npc.id).desty / 32)) ^ 2)) <= 4 then
                                    sleep(50)
                                    bot:place(getposx(), getposy() + 2, ghost_jar)
                                    sleep(300)
    webHookEmbed(
        [[STATUS BOT ]]..owner_info..[[
		
	    ---------- Bot Info ----------
        ]]..bot_emoji..[[ Name: ]]..bot.name..[[
        
        ]]..getStatusEmoji(bot)..[[ Status: ]]..getStatus(bot)..[[
        
        ]]..level_emoji..[[ Level: ]]..bot.level..[[
        
        ]]..gems_emoji..[[ Gems: ]]..bot.gem_count..[[
		
        ]]..globe_emoji..[[ World: ]]..bot:getWorld().name..[[

        --------- Stock Info ---------
        ]]..jar_emoji..[[ Jar: ]]..jar_count..[[
        
        ]]..gij_emoji..[[ Gij: ]]..gij_count..[[
        
        ]]..mind_emoji..[[Mind: ]]..mind_count..[[
		
        ]]..seed_emoji..[[ Seed: ]]..seed_count..[[
        
        ]]..neutron_packE..[[ Pack: ]]..ntp_count..[[
            
        ]]..neutron_gunE..[[ Gun: ]]..ntg_count..[[

        --------- Backpack Info ---------
        ]]..jar_emoji..[[ Jar: ]]..itemCount(ghost_jar)..[[
        
        ]]..gij_emoji..[[ Gij: ]]..itemCount(ghost_in_a_jar)..[[
        
        ]]..mind_emoji..[[Mind: ]]..itemCount(mind_ghost_in_a_jar)..[[
		
        ]]..seed_emoji..[[ Seed: ]]..itemCount(jar_seed)..[[
		

        edited <t:]]..os.time()..[[:R>
        ]]
        )
                                    placed = true

                                end
                            end
                        end


                        if placed then
                            gij_count2 = itemCount(ghost_in_a_jar)
                            local iter = 1
                            while gij_count2 - itemCount(ghost_in_a_jar) == 0 do

                                if bot.status ~= BotStatus.online then return end
                                if not bot:getWorld():getNPC(npc.id) then break end

                                xx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                                yy = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)
                                if math.floor(math.sqrt((getposx() - xx) ^ 2 + (getposy() - yy) ^ 2)) <= 4 then
                                    bot:hit(xx, yy)
                                    sleep(250)
                                else
                                    placed = false
                                    sleep(5000)
                                    break
                                end

                                iter = iter + 1
                                if iter > 50 then
                                    max_place = max_place + 1
                                    if max_place == 2 then goto continue end
                                    placed = false
                                    break
                                end
                            end

                            if not bot:getWorld():getNPC(npc.id) then break end

                            if gij_count2 - itemCount(ghost_in_a_jar) ~= 0 then
                                breakOuterLoop = true
                                break
                            end
                        end

                        iterato = iterato + 1

                        if iterato >= 6000 then
                            iterato = 1
                            break
                        end
                        sleep(50)
                    end

                    sleep(3000)
                    if breakOuterLoop then break end
                    ::continue::
                end

                if npc.type == 7 then

                    if auto_leave then
                        for _, player in pairs(bot:getWorld():getPlayers()) do
                            for _, exempt in pairs(exempted) do
                                if player.name:lower() ~= exempt:lower() and (player.name:lower() ~= bot.name:lower() and player.name:lower():match("(.+)_") ~= bot.name:lower()) then return end
                            end
                        end
                    end

                    if not bot:getWorld():getNPC(npc.id) then break end
                    local npc_currx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                    local npc_curry = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)

                    if npc_currx == nil or npc_curry == nil then break end
                    if npc_curry >= 55 then goto continue end

                    if bot:getWorld():getTile(npc_currx, npc_curry).fg == 0 and bot:getWorld():getTile(npc_currx, npc_curry + 1).fg ~= 0 and bot:getWorld():getTile(npc_currx, npc_curry + 3).fg ~= 0 and bot:getWorld():getTile(npc_currx, npc_curry + 2).fg == 0 then
                        if os.time() < path_time + 3 then goto continue end

                        bot:findPath(npc_currx, npc_curry)
                        path_time = os.time()
                        max = 1
                        while not bot:isInTile(npc_currx, npc_curry) do
                            sleep(500)
                            max = max + 1

                            if max >= 11 then break end
                        end
                    end

                    local placed = false

                    if getposx() ~= npc_currx or getposy() ~= npc_curry then goto continue end

                    start_time = os.time()
                    max_place = 0
                    iterato = 1
                    iterator2 = 1
                    while true do

                        max_fp = 0
                        if bot.status ~= BotStatus.online then return end
                        if not bot:getWorld():getNPC(npc.id) then break end

                        if math.floor(math.sqrt((getposx() - math.floor(bot:getWorld():getNPC(npc.id).x / 32)) ^ 2 + (getposy() - math.floor(bot:getWorld():getNPC(npc.id).y / 32)) ^ 2)) > 4 then
                            while true do

                                if bot.status ~= BotStatus.online then return end

                                if not bot:getWorld():getNPC(npc.id) then break end
                                local currx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                                local curry = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)

                                if currx == nil or curry == nil then goto continue end
                                if curry >= 55 then goto continue end

                                if bot.status ~= 1 then return end
                                if bot:getWorld():getTile(npc_currx, npc_curry).fg == 0 and bot:getWorld():getTile(currx, curry + 1).fg ~= 0 and bot:getWorld():getTile(currx, curry + 3).fg ~= 0 and bot:getWorld():getTile(currx, curry + 2).fg == 0 then

                                    if os.time() < path_time + 3 then goto cont end

                                    bot:findPath(currx, curry)
                                    max_fp = max_fp + 1
                                    path_time = os.time()
                                    if max_fp >= 2 then
                                        max_fp = 0
                                        goto breakLoop
                                    end
                                    max = 1
                                    while not bot:isInTile(currx, curry) do
                                        sleep(500)
                                        max = max + 1
                                        if max >= 11 then break end
                                    end
                                end
                                if bot.status ~= 1 then return end
                                if getposx() == currx and getposy() == curry then break end
                                ::cont::
                                iterator2 = iterator2 + 1

                                if iterator2 >= 3000 then
                                    iterator2 = 1
                                    break
                                end
                                sleep(100)
                            end
                        end

                        if not bot:getWorld():getNPC(npc.id) then break end

                        if bot.status ~= 1 then return end
                        xx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                        yy = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)
                        if math.floor(math.sqrt((getposx() - xx) ^ 2 + (getposy() - yy) ^ 2)) <= 4 then
                            bot:hit(xx, yy)
                            sleep(250)
                        end

                        if not bot:getWorld():getNPC(npc.id) then break end
                        if bot.status ~= 1 then return end
                        if math.floor(math.sqrt((getposx() - math.floor(bot:getWorld():getNPC(npc.id).x / 32)) ^ 2 + (getposy() - math.floor(bot:getWorld():getNPC(npc.id).y / 32)) ^ 2)) <= 2 and not placed then
                            if bot:getWorld():getTile(getposx(), getposy() + 3).fg ~= 0 and bot:getWorld():getTile(getposx(), getposy() + 2).fg == 0 then
                                if math.floor(math.sqrt((getposx() - math.floor(bot:getWorld():getNPC(npc.id).destx / 32)) ^ 2 + (getposy() - math.floor(bot:getWorld():getNPC(npc.id).desty / 32)) ^ 2)) <= 4 then
                                    sleep(50)
                                    bot:place(getposx(), getposy() + 2, ghost_jar)
                                    sleep(300)
    webHookEmbed(
        [[STATUS BOT ]]..owner_info..[[
		
	    ---------- Bot Info ----------
        ]]..bot_emoji..[[ Name: ]]..bot.name..[[
        
        ]]..getStatusEmoji(bot)..[[ Status: ]]..getStatus(bot)..[[
        
        ]]..level_emoji..[[ Level: ]]..bot.level..[[
        
        ]]..gems_emoji..[[ Gems: ]]..bot.gem_count..[[
		
        ]]..globe_emoji..[[ World: ]]..bot:getWorld().name..[[

        --------- Stock Info ---------
        ]]..jar_emoji..[[ Jar: ]]..jar_count..[[
        
        ]]..gij_emoji..[[ Gij: ]]..gij_count..[[
        
        ]]..mind_emoji..[[Mind: ]]..mind_count..[[
		
        ]]..seed_emoji..[[ Seed: ]]..seed_count..[[
        
        ]]..neutron_packE..[[ Pack: ]]..ntp_count..[[
            
        ]]..neutron_gunE..[[ Gun: ]]..ntg_count..[[

        --------- Backpack Info ---------
        ]]..jar_emoji..[[ Jar: ]]..itemCount(ghost_jar)..[[
        
        ]]..gij_emoji..[[ Gij: ]]..itemCount(ghost_in_a_jar)..[[
        
        ]]..mind_emoji..[[Mind: ]]..itemCount(mind_ghost_in_a_jar)..[[
		
        ]]..seed_emoji..[[ Seed: ]]..itemCount(jar_seed)..[[
		

        edited <t:]]..os.time()..[[:R>
        ]]
        )
                                    placed = true
                                end
                            end
                        end

                        if placed then
                            gij_count2 = itemCount(ghost_in_a_jar)
                            local iter = 1
                            while gij_count2 - itemCount(ghost_in_a_jar) == 0 do

                                if bot.status ~= BotStatus.online then return end
                                if bot:getWorld():getNPC(npc.id) == nil then break end

                                xx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                                yy = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)
                                if math.floor(math.sqrt((getposx() - xx) ^ 2 + (getposy() - yy) ^ 2)) <= 4 then
                                    bot:hit(xx, yy)
                                    sleep(250)
                                else
                                    placed = false
                                    sleep(5000)
                                    break
                                end

                                iter = iter + 1
                                if iter > 50 then
                                    max_place = max_place + 1
                                    if max_place == 2 then goto continue end
                                    placed = false
                                    break
                                end
                            end

                            if not bot:getWorld():getNPC(npc.id) then break end

                            if gij_count2 - itemCount(ghost_in_a_jar) ~= 0 then
                                breakOuterLoop = true
                                break
                            end
                        end

                        iterato = iterato + 1

                        if iterato >= 6000 then
                            iterato = 1
                            break
                        end
                        sleep(50)
                    end

                    sleep(3000)
                    if breakOuterLoop then break end
                    ::continue::
                end
            else
                if npc.type == 7 then

                    if auto_leave then
                        for _, player in pairs(bot:getWorld():getPlayers()) do
                            for _, exempt in pairs(exempted) do
                                if player.name:lower() ~= exempt:lower() and (player.name:lower() ~= bot.name:lower() and player.name:lower():match("(.+)_") ~= bot.name:lower()) then return end
                            end
                        end
                    end

                    if not bot:getWorld():getNPC(npc.id) then break end
                    local npc_currx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                    local npc_curry = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)

                    if npc_currx == nil or npc_curry == nil then break end
                    if npc_curry >= 55 then goto continue end

                    if bot:getWorld():getTile(npc_currx, npc_curry).fg == 0 and bot:getWorld():getTile(npc_currx, npc_curry + 1).fg ~= 0 and bot:getWorld():getTile(npc_currx, npc_curry + 3).fg ~= 0 and bot:getWorld():getTile(npc_currx, npc_curry + 2).fg == 0 then
                        if os.time() < path_time + 3 then goto continue end

                        bot:findPath(npc_currx, npc_curry)
                        path_time = os.time()
                        max = 1
                        while not bot:isInTile(npc_currx, npc_curry) do
                            sleep(500)
                            max = max + 1

                            if max >= 11 then break end
                        end
                    end

                    local placed = false

                    if getposx() ~= npc_currx or getposy() ~= npc_curry then goto continue end

                    start_time = os.time()
                    max_place = 0
                    iterato = 1
                    iterator2 = 1
                    while true do

                        max_fp = 0
                        if bot.status ~= BotStatus.online then return end
                        if not bot:getWorld():getNPC(npc.id) then break end

                        if math.floor(math.sqrt((getposx() - math.floor(bot:getWorld():getNPC(npc.id).x / 32)) ^ 2 + (getposy() - math.floor(bot:getWorld():getNPC(npc.id).y / 32)) ^ 2)) > 4 then
                            while true do

                                if bot.status ~= BotStatus.online then return end

                                if not bot:getWorld():getNPC(npc.id) then break end
                                local currx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                                local curry = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)

                                if currx == nil or curry == nil then goto continue end
                                if curry >= 55 then goto continue end

                                if bot.status ~= 1 then return end
                                if bot:getWorld():getTile(npc_currx, npc_curry).fg == 0 and bot:getWorld():getTile(currx, curry + 1).fg ~= 0 and bot:getWorld():getTile(currx, curry + 3).fg ~= 0 and bot:getWorld():getTile(currx, curry + 2).fg == 0 then

                                    if os.time() < path_time + 3 then goto cont end

                                    bot:findPath(currx, curry)
                                    max_fp = max_fp + 1
                                    path_time = os.time()
                                    if max_fp >= 2 then
                                        max_fp = 0
                                        goto breakLoop
                                    end
                                    max = 1
                                    while not bot:isInTile(currx, curry) do
                                        sleep(500)
                                        max = max + 1
                                        if max >= 11 then break end
                                    end
                                end
                                if bot.status ~= 1 then return end
                                if getposx() == currx and getposy() == curry then break end
                                ::cont::
                                iterator2 = iterator2 + 1

                                if iterator2 >= 3000 then
                                    iterator2 = 1
                                    break
                                end
                                sleep(100)
                            end
                        end

                        if not bot:getWorld():getNPC(npc.id) then break end

                        if bot.status ~= 1 then return end
                        xx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                        yy = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)
                        if math.floor(math.sqrt((getposx() - xx) ^ 2 + (getposy() - yy) ^ 2)) <= 4 then
                            bot:hit(xx, yy)
                            sleep(250)
                        end

                        if not bot:getWorld():getNPC(npc.id) then break end
                        if bot.status ~= 1 then return end
                        if math.floor(math.sqrt((getposx() - math.floor(bot:getWorld():getNPC(npc.id).x / 32)) ^ 2 + (getposy() - math.floor(bot:getWorld():getNPC(npc.id).y / 32)) ^ 2)) <= 2 and not placed then
                            if bot:getWorld():getTile(getposx(), getposy() + 3).fg ~= 0 and bot:getWorld():getTile(getposx(), getposy() + 2).fg == 0 then
                                if math.floor(math.sqrt((getposx() - math.floor(bot:getWorld():getNPC(npc.id).destx / 32)) ^ 2 + (getposy() - math.floor(bot:getWorld():getNPC(npc.id).desty / 32)) ^ 2)) <= 4 then
                                    sleep(50)
                                    bot:place(getposx(), getposy() + 2, ghost_jar)
                                    sleep(300)
    webHookEmbed(
        [[STATUS BOT ]]..owner_info..[[
		
	    ---------- Bot Info ----------
        ]]..bot_emoji..[[ Name: ]]..bot.name..[[
        
        ]]..getStatusEmoji(bot)..[[ Status: ]]..getStatus(bot)..[[
        
        ]]..level_emoji..[[ Level: ]]..bot.level..[[
        
        ]]..gems_emoji..[[ Gems: ]]..bot.gem_count..[[
		
        ]]..globe_emoji..[[ World: ]]..bot:getWorld().name..[[

        --------- Stock Info ---------
        ]]..jar_emoji..[[ Jar: ]]..jar_count..[[
        
        ]]..gij_emoji..[[ Gij: ]]..gij_count..[[
        
        ]]..mind_emoji..[[Mind: ]]..mind_count..[[
		
        ]]..seed_emoji..[[ Seed: ]]..seed_count..[[
        
        ]]..neutron_packE..[[ Pack: ]]..ntp_count..[[
            
        ]]..neutron_gunE..[[ Gun: ]]..ntg_count..[[

        --------- Backpack Info ---------
        ]]..jar_emoji..[[ Jar: ]]..itemCount(ghost_jar)..[[
        
        ]]..gij_emoji..[[ Gij: ]]..itemCount(ghost_in_a_jar)..[[
        
        ]]..mind_emoji..[[Mind: ]]..itemCount(mind_ghost_in_a_jar)..[[
		
        ]]..seed_emoji..[[ Seed: ]]..itemCount(jar_seed)..[[
		

        edited <t:]]..os.time()..[[:R>
        ]]
        )
                                    placed = true
                                end
                            end
                        end

                        if placed then
                            gij_count2 = itemCount(ghost_in_a_jar)
                            local iter = 1
                            while gij_count2 - itemCount(ghost_in_a_jar) == 0 do

                                if bot.status ~= BotStatus.online then return end
                                if bot:getWorld():getNPC(npc.id) == nil then break end

                                xx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                                yy = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)
                                if math.floor(math.sqrt((getposx() - xx) ^ 2 + (getposy() - yy) ^ 2)) <= 4 then
                                    bot:hit(xx, yy)
                                    sleep(250)
                                else
                                    placed = false
                                    sleep(5000)
                                    break
                                end

                                iter = iter + 1
                                if iter > 50 then
                                    max_place = max_place + 1
                                    if max_place == 2 then goto continue end
                                    placed = false
                                    break
                                end
                            end

                            if not bot:getWorld():getNPC(npc.id) then break end

                            if gij_count2 - itemCount(ghost_in_a_jar) ~= 0 then
                                breakOuterLoop = true
                                break
                            end
                        end

                        iterato = iterato + 1

                        if iterato >= 6000 then
                            iterato = 1
                            break
                        end
                        sleep(50)
                    end

                    sleep(3000)
                    if breakOuterLoop then break end
                    ::continue::
                end

                if npc.type == 1 then

                    if auto_leave then
                        for _, player in pairs(bot:getWorld():getPlayers()) do
                            for _, exempt in pairs(exempted) do
                                if player.name:lower() ~= exempt:lower() and (player.name:lower() ~= bot.name:lower() and player.name:lower():match("(.+)_") ~= bot.name:lower()) then return end
                            end
                        end
                    end

                    if not bot:getWorld():getNPC(npc.id) then break end
                    local npc_currx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                    local npc_curry = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)

                    if npc_currx == nil or npc_curry == nil then break end
                    if npc_curry >= 55 then goto continue end

                    if bot:getWorld():getTile(npc_currx, npc_curry).fg == 0 and bot:getWorld():getTile(npc_currx, npc_curry + 1).fg ~= 0 and bot:getWorld():getTile(npc_currx, npc_curry + 3).fg ~= 0 and bot:getWorld():getTile(npc_currx, npc_curry + 2).fg == 0 then
                        if os.time() < path_time + 3 then goto continue end

                        bot:findPath(npc_currx, npc_curry)
                        path_time = os.time()
                        max = 1
                        while not bot:isInTile(npc_currx, npc_curry) do
                            sleep(500)
                            max = max + 1

                            if max >= 11 then break end
                        end
                    end

                    local placed = false

                    if getposx() ~= npc_currx or getposy() ~= npc_curry then goto continue end

                    start_time = os.time()
                    max_place = 0
                    iterato = 1
                    iterator2 = 1
                    while true do

                        max_fp = 0
                        if bot.status ~= BotStatus.online then return end
                        if not bot:getWorld():getNPC(npc.id) then break end

                        if math.floor(math.sqrt((getposx() - math.floor(bot:getWorld():getNPC(npc.id).x / 32)) ^ 2 + (getposy() - math.floor(bot:getWorld():getNPC(npc.id).y / 32)) ^ 2)) > 4 then
                            while true do

                                if bot.status ~= BotStatus.online then return end

                                if not bot:getWorld():getNPC(npc.id) then break end
                                local currx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                                local curry = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)

                                if currx == nil or curry == nil then goto continue end
                                if curry >= 55 then goto continue end

                                if bot.status ~= 1 then return end
                                if bot:getWorld():getTile(npc_currx, npc_curry).fg == 0 and bot:getWorld():getTile(currx, curry + 1).fg ~= 0 and bot:getWorld():getTile(currx, curry + 3).fg ~= 0 and bot:getWorld():getTile(currx, curry + 2).fg == 0 then

                                    if os.time() < path_time + 3 then goto cont end

                                    bot:findPath(currx, curry)
                                    max_fp = max_fp + 1
                                    path_time = os.time()
                                    if max_fp >= 2 then
                                        max_fp = 0
                                        goto breakLoop
                                    end
                                    max = 1
                                    while not bot:isInTile(currx, curry) do
                                        sleep(500)
                                        max = max + 1
                                        if max >= 11 then break end
                                    end
                                end
                                if bot.status ~= 1 then return end
                                if getposx() == currx and getposy() == curry then break end
                                ::cont::
                                iterator2 = iterator2 + 1

                                if iterator2 >= 3000 then
                                    iterator2 = 1
                                    break
                                end
                                sleep(100)
                            end
                        end

                        if not bot:getWorld():getNPC(npc.id) then break end

                        if bot.status ~= 1 then return end
                        xx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                        yy = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)
                        if math.floor(math.sqrt((getposx() - xx) ^ 2 + (getposy() - yy) ^ 2)) <= 4 then
                            bot:hit(xx, yy)
                            sleep(250)
                        end

                        if not bot:getWorld():getNPC(npc.id) then break end
                        if bot.status ~= 1 then return end
                        if math.floor(math.sqrt((getposx() - math.floor(bot:getWorld():getNPC(npc.id).x / 32)) ^ 2 + (getposy() - math.floor(bot:getWorld():getNPC(npc.id).y / 32)) ^ 2)) <= 2 and not placed then
                            if bot:getWorld():getTile(getposx(), getposy() + 3).fg ~= 0 and bot:getWorld():getTile(getposx(), getposy() + 2).fg == 0 then
                                if math.floor(math.sqrt((getposx() - math.floor(bot:getWorld():getNPC(npc.id).destx / 32)) ^ 2 + (getposy() - math.floor(bot:getWorld():getNPC(npc.id).desty / 32)) ^ 2)) <= 4 then
                                    sleep(50)
                                    bot:place(getposx(), getposy() + 2, ghost_jar)
                                    sleep(300)
    webHookEmbed(
        [[STATUS BOT ]]..owner_info..[[
		
	    ---------- Bot Info ----------
        ]]..bot_emoji..[[ Name: ]]..bot.name..[[
        
        ]]..getStatusEmoji(bot)..[[ Status: ]]..getStatus(bot)..[[
        
        ]]..level_emoji..[[ Level: ]]..bot.level..[[
        
        ]]..gems_emoji..[[ Gems: ]]..bot.gem_count..[[
		
        ]]..globe_emoji..[[ World: ]]..bot:getWorld().name..[[

        --------- Stock Info ---------
        ]]..jar_emoji..[[ Jar: ]]..jar_count..[[
        
        ]]..gij_emoji..[[ Gij: ]]..gij_count..[[
        
        ]]..mind_emoji..[[Mind: ]]..mind_count..[[
		
        ]]..seed_emoji..[[ Seed: ]]..seed_count..[[
        
        ]]..neutron_packE..[[ Pack: ]]..ntp_count..[[
            
        ]]..neutron_gunE..[[ Gun: ]]..ntg_count..[[

        --------- Backpack Info ---------
        ]]..jar_emoji..[[ Jar: ]]..itemCount(ghost_jar)..[[
        
        ]]..gij_emoji..[[ Gij: ]]..itemCount(ghost_in_a_jar)..[[
        
        ]]..mind_emoji..[[Mind: ]]..itemCount(mind_ghost_in_a_jar)..[[
		
        ]]..seed_emoji..[[ Seed: ]]..itemCount(jar_seed)..[[
		

        edited <t:]]..os.time()..[[:R>
        ]]
        )
                                    placed = true
                                end
                            end
                        end

                        if placed then
                            gij_count2 = itemCount(ghost_in_a_jar)
                            local iter = 1
                            while gij_count2 - itemCount(ghost_in_a_jar) == 0 do

                                if bot.status ~= BotStatus.online then return end
                                if bot:getWorld():getNPC(npc.id) == nil then break end

                                xx = math.floor(bot:getWorld():getNPC(npc.id).destx / 32)
                                yy = math.floor(bot:getWorld():getNPC(npc.id).desty / 32)
                                if math.floor(math.sqrt((getposx() - xx) ^ 2 + (getposy() - yy) ^ 2)) <= 4 then
                                    bot:hit(xx, yy)
                                    sleep(250)
                                else
                                    placed = false
                                    sleep(5000)
                                    break
                                end

                                iter = iter + 1
                                if iter > 50 then
                                    max_place = max_place + 1
                                    if max_place == 2 then goto continue end
                                    placed = false
                                    break
                                end
                            end

                            if not bot:getWorld():getNPC(npc.id) then break end

                            if gij_count2 - itemCount(ghost_in_a_jar) ~= 0 then
                                breakOuterLoop = true
                                break
                            end
                        end

                        iterato = iterato + 1

                        if iterato >= 6000 then
                            iterato = 1
                            break
                        end
                        sleep(50)
                    end

                    sleep(3000)
                    if breakOuterLoop then break end
                    ::continue::
                end
            end
        end
        ::breakLoop::
        sleep(100)
    end
end

function ReconnectGhost(world)
    if bot.status ~= 1 then
        while bot.status ~= 1 do
            bot:connect()
				
            sleep(10000)

    webHookEmbed(
        [[STATUS BOT ]]..owner_info..[[
		
	    ---------- Bot Info ----------
        ]]..bot_emoji..[[ Name: ]]..bot.name..[[
        
        ]]..getStatusEmoji(bot)..[[ Status: ]]..getStatus(bot)..[[
        
        ]]..level_emoji..[[ Level: ]]..bot.level..[[
        
        ]]..gems_emoji..[[ Gems: ]]..bot.gem_count..[[
		
        ]]..globe_emoji..[[ World: ]]..bot:getWorld().name..[[

        --------- Stock Info ---------
        ]]..jar_emoji..[[ Jar: ]]..jar_count..[[
        
        ]]..gij_emoji..[[ Gij: ]]..gij_count..[[
        
        ]]..mind_emoji..[[Mind: ]]..mind_count..[[
		
        ]]..seed_emoji..[[ Seed: ]]..seed_count..[[
        
        ]]..neutron_packE..[[ Pack: ]]..ntp_count..[[
            
        ]]..neutron_gunE..[[ Gun: ]]..ntg_count..[[

        --------- Backpack Info ---------
        ]]..jar_emoji..[[ Jar: ]]..itemCount(ghost_jar)..[[
        
        ]]..gij_emoji..[[ Gij: ]]..itemCount(ghost_in_a_jar)..[[
        
        ]]..mind_emoji..[[Mind: ]]..itemCount(mind_ghost_in_a_jar)..[[
		
        ]]..seed_emoji..[[ Seed: ]]..itemCount(jar_seed)..[[
		
	

        edited <t:]]..os.time()..[[:R>
        ]]
        )
        end
        sleep(3000)
        bot:warp(world.."|"..id_worlds)
        sleep(6000)
    end
    if id_worlds ~= "" and id_worlds ~= nil then
        worldName = tostring(bot:getWorld().name)
        if worldName ~= "" and worldName ~= "EXIT" then
            if bot:getWorld():getTile(getposx(),getposy()).fg == 6 then
                sleep(3000)
                bot:warp(world.."|"..id_worlds)
                sleep(6000)
            end
        end
    end
end

function ReconnectStorage(world)
    if bot.status ~= 1 then
        while bot.status ~= 1 do
            bot:connect()
            sleep(10000)

    webHookEmbed(
        [[STATUS BOT ]]..owner_info..[[
		
	    ---------- Bot Info ----------
        ]]..bot_emoji..[[ Name: ]]..bot.name..[[
        
        ]]..getStatusEmoji(bot)..[[ Status: ]]..getStatus(bot)..[[
        
        ]]..level_emoji..[[ Level: ]]..bot.level..[[
        
        ]]..gems_emoji..[[ Gems: ]]..bot.gem_count..[[
		
        ]]..globe_emoji..[[ World: ]]..bot:getWorld().name..[[

        --------- Stock Info ---------
        ]]..jar_emoji..[[ Jar: ]]..jar_count..[[
        
        ]]..gij_emoji..[[ Gij: ]]..gij_count..[[
        
        ]]..mind_emoji..[[Mind: ]]..mind_count..[[
		
        ]]..seed_emoji..[[ Seed: ]]..seed_count..[[
        
        ]]..neutron_packE..[[ Pack: ]]..ntp_count..[[
            
        ]]..neutron_gunE..[[ Gun: ]]..ntg_count..[[

        --------- Backpack Info ---------
        ]]..jar_emoji..[[ Jar: ]]..itemCount(ghost_jar)..[[
        
        ]]..gij_emoji..[[ Gij: ]]..itemCount(ghost_in_a_jar)..[[
        
        ]]..mind_emoji..[[Mind: ]]..itemCount(mind_ghost_in_a_jar)..[[
		
        ]]..seed_emoji..[[ Seed: ]]..itemCount(jar_seed)..[[
		

        edited <t:]]..os.time()..[[:R>
        ]]
        )
        end
        sleep(3000)
        bot:warp(world)
        sleep(6000)
    end
    worldName = tostring(bot:getWorld().name)
    if worldName ~= "" and worldName ~= "EXIT" then
        if bot:getWorld():getTile(getposx(),getposy()).fg == 6 then
            sleep(3000)
            bot:warp(world)
            sleep(6000)
        end
    end
end


function dropPack()

    bot.auto_collect = false
    checkWorld(pack_world)

    if not bot:getWorld():getLocal() then
        bot.auto_reconnect = false
        sleep(500)
        bot:disconnect()
        sleep(10000)
        ReconnectStorage(pack_world)
        bot.auto_reconnect = true
    end

    for _, tile in pairs(getTiles()) do
        if tile.fg == ptile_id then
            bot:findPath(tile.x + 1, tile.y)
            sleep(1000)
            if bot:isInTile(tile.x + 1, tile.y) then
                for _, itemid in pairs(pack_id) do
                    bot:drop(itemid, bot:getInventory():getItemCount(itemid))
                    sleep(4000)
                    
                end
            end
        end
    end
end

function buyPack()

    if not buy_pack then return end

    while bot.gem_count > pack_price do
        bot:sendPacket(2, "action|buy\nitem|"..pack_name)
        sleep(4000) -- you can change delay
    end

    for _, itemid in pairs(pack_id) do
        if bot:getInventory():getItemCount(itemid) >= drop_when then
            dropPack()
            break
        end
    end
end

function main()

    while true do
        for _, world in pairs(hunt_worlds) do
            hunt(world)
           
    webHookEmbed(
        [[STATUS BOT ]]..owner_info..[[
		
	    ---------- Bot Info ----------
        ]]..bot_emoji..[[ Name: ]]..bot.name..[[
        
        ]]..getStatusEmoji(bot)..[[ Status: ]]..getStatus(bot)..[[
        
        ]]..level_emoji..[[ Level: ]]..bot.level..[[
        
        ]]..gems_emoji..[[ Gems: ]]..bot.gem_count..[[
		
        ]]..globe_emoji..[[ World: ]]..bot:getWorld().name..[[

        --------- Stock Info ---------
        ]]..jar_emoji..[[ Jar: ]]..jar_count..[[
        
        ]]..gij_emoji..[[ Gij: ]]..gij_count..[[
        
        ]]..mind_emoji..[[Mind: ]]..mind_count..[[
		
        ]]..seed_emoji..[[ Seed: ]]..seed_count..[[
        
        ]]..neutron_packE..[[ Pack: ]]..ntp_count..[[
            
        ]]..neutron_gunE..[[ Gun: ]]..ntg_count..[[

        --------- Backpack Info ---------
        ]]..jar_emoji..[[ Jar: ]]..itemCount(ghost_jar)..[[
        
        ]]..gij_emoji..[[ Gij: ]]..itemCount(ghost_in_a_jar)..[[
        
        ]]..mind_emoji..[[Mind: ]]..itemCount(mind_ghost_in_a_jar)..[[
		
        ]]..seed_emoji..[[ Seed: ]]..itemCount(jar_seed)..[[
		

        edited <t:]]..os.time()..[[:R>
        ]]
        )

            if stop_program then return end
		end
    end
end

main()