--[[-------------------------------------------------------

Fight to Survive: Stronghold by RoaringCow, TehBigA is licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.

This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/3.0/ or send a letter to Creative Commons, 
444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

---------------------------------------------------------]]
--[[
	GM13 Changes

	usermessage - > net
	datastream - > net

	Cleaned Code
]]--

GM.Name 	= "F2S: Stronghold"
GM.Author 	= "RoaringCow/TehBigA"
GM.Email 	= "roaringcow@gmail.com"
GM.Website 	= "roaringcow.com"
GM.Version	= "2.06" 

-- Oh neat garry added this back after removing it and refusing to add it back
function GM:GetGameDescription() return self.Name end

-- --------------------------------------------------------------------------------------------------------------

GM.PrimaryWeapons = {}
-- Assault Rifles
GM.PrimaryWeapons["weapon_sh_ak47"] =        { type="ar2", name="AK-47", price=1300, model="models/weapons/w_rif_ak47.mdl", fov=20, offset=Vector(-50,-2,-20) }
GM.PrimaryWeapons["weapon_sh_galil"] =       { type="ar2", name="Galil-SAR", price=1000, model="models/weapons/w_rif_galil.mdl", fov=20, offset=Vector(-50,-1,-20) }
GM.PrimaryWeapons["weapon_sh_m4a2"] =        { type="ar2", name="M4A1", price=1000, model="models/weapons/w_rif_m4a1.mdl", fov=20, offset=Vector(-50,0,-20) }
GM.PrimaryWeapons["weapon_sh_sg552"] =       { type="ar2", name="SG-552", price=1200, model="models/weapons/w_rif_sg552.mdl", fov=20, offset=Vector(-50,2,-20) }
GM.PrimaryWeapons["weapon_sh_m249"] =        { type="ar2", name="M249", price=1800, model="models/weapons/w_mach_m249para.mdl", fov=20, offset=Vector(-50,-2,-20) }
GM.PrimaryWeapons["weapon_sh_famas"] =      {type="ar2", name="Famas", price=900, model="models/weapons/w_rif_famas.mdl", fov=15, offset=Vector(-70,3.5,-30), ang=Angle(0,0,0) }
GM.PrimaryWeapons["weapon_sh_ar2"] =        {type="ar2", name="AR2", price=1250, model="models/weapons/w_irifle.mdl", fov=70, offset=Vector(5,-4,2), ang=Angle(0, -160, 20) }

-- Sniper
GM.PrimaryWeapons["weapon_sh_awp"] =         { type="ar2", name="AWP L96", price=2500, model="models/weapons/w_snip_awp.mdl", fov=20, offset=Vector(-50,-2,-20) }
GM.PrimaryWeapons["weapon_sh_scout"] =       { type="ar2", name="Scout", price=1000, model="models/weapons/w_snip_scout.mdl", fov=20, offset=Vector(-50,-3,-20) }
GM.PrimaryWeapons["weapon_sh_g3sg1"] =       { type="ar2", name="G3-SG1", price=1200, model="models/weapons/w_snip_g3sg1.mdl", fov=20, offset=Vector(-50,0,-20) }
GM.PrimaryWeapons["weapon_sh_sg550"] =       { type="ar2", name="SG-550", price=1500.0, model="models/weapons/w_snip_sg550.mdl", fov=20, offset=Vector(-50, -2, -20) }

-- SMG
GM.PrimaryWeapons["weapon_sh_aug"] =         { type="ar2", name="AUG-A1", price=800, model="models/weapons/w_rif_aug.mdl", fov=20, offset=Vector(-50,3,-20) }
GM.PrimaryWeapons["weapon_sh_mp5a4"] =       { type="smg1", name="MP5-A5", price=0, model="models/weapons/w_smg_mp5.mdl", fov=20, offset=Vector(-50,-2,-20) }
GM.PrimaryWeapons["weapon_sh_ump_45"] =      { type="smg1", name="UMP-45", price=900, model="models/weapons/w_smg_ump45.mdl", fov=20, offset=Vector(-50,0,-20) }

-- Shotguns
GM.PrimaryWeapons["weapon_sh_pumpshotgun"] = { type="buckshot", name="Pump M3 Shotgun", price=600, model="models/weapons/w_shot_m3super90.mdl", fov=20, offset=Vector(-50,0,-20) }
GM.PrimaryWeapons["weapon_sh_xm1014"] =      { type="buckshot", name="Auto M4 Shotgun", price=900, model="models/weapons/w_shot_xm1014.mdl", fov=20, offset=Vector(-50,-2,-20) }
GM.PrimaryWeapons["weapon_sh_spas12"] =     { type="buckshot", name="Auto Spas-12 Shotgun", price=900, model="models/weapons/w_shotgun.mdl", fov=70, offset=Vector(5,-4,2), ang=Angle(0, -160, 20) }

-- Other Items
GM.PrimaryWeapons["weapon_sh_rpg"] =         { type="rpg_round", name="Rocket Launcher", price=2000, model="models/weapons/w_rocket_launcher.mdl", fov=20, offset=Vector(-60,-13,-25) }
GM.PrimaryWeapons["weapon_sh_bountyscanner"]={ type="battery", name="Bounty Hunter", price=750, model="models/weapons/w_irifle.mdl", fov=20, offset=Vector(-40,0,-20), ang=Angle(0,180,0) }
GM.PrimaryWeapons["weapon_sh_hacker"]=      { type="battery", name="Door Hacker", price=750, model="models/weapons/w_irifle.mdl", fov=20, offset=Vector(-40,0,-20), ang=Angle(0,180,0) }
GM.PrimaryWeapons["weapon_sh_cannon"]= 		{type="rpg_round", name="Cannon", price=1000000, model="models/weapons/w_rocket_launcher.mdl", fov=20, offset=Vector(-40,0,-20)}

GM.SecondaryWeapons = {}
-- Secondaries

-- Pistols
GM.SecondaryWeapons["weapon_sh_deagle"] =     { type="pistol", name="D.Eagle", price=1400, model="models/weapons/w_pist_deagle.mdl",offset=Vector(10,-3,2), fov=40 }
GM.SecondaryWeapons["weapon_sh_revolver"] =     { type="pistol", name="Revolver 357", price=1500, model="models/weapons/w_357.mdl", offset=Vector(5,-4,0), fov=40 }
GM.SecondaryWeapons["weapon_sh_usp9mm"] =       { type="pistol", name="USP .9MM", price =500, model="models/weapons/w_pistol.mdl", offset=Vector(10,-1,3), fov=50 }
GM.SecondaryWeapons["weapon_sh_usp"] =          { type="pistol", name="USP .45", price=800, model="models/weapons/w_pist_usp.mdl",offset=Vector(10,-3,2), fov=40 }
GM.SecondaryWeapons["weapon_sh_five-seven"] =   { type="pistol", name="Five-Seven", price=500, model="models/weapons/w_pist_fiveseven.mdl",offset=Vector(10,-3,2), fov=40 }
GM.SecondaryWeapons["weapon_sh_glock18"] =      { type="pistol", name="Glock 18", price=400, model="models/weapons/w_pist_glock18.mdl",offset=Vector(10,-3,2), fov=40 }
GM.SecondaryWeapons["weapon_sh_p228"] =         { type="pistol", name="P228", price=0, model="models/weapons/w_pist_p228.mdl",offset=Vector(10,-3,2), fov=40 }

-- SMG
GM.SecondaryWeapons["weapon_sh_tmp"] =          { type="smg1", name="TMP", price=1200, model="models/weapons/w_smg_tmp.mdl", auto=true,offset=Vector(-10,-5,-5), fov=30 }
GM.SecondaryWeapons["weapon_sh_mac11-380"] =     { type="smg1", name="MAC-10", price=1000, model="models/weapons/w_smg_mac10.mdl", auto=true,offset=Vector(-10,-2,-7), fov=30 }
GM.SecondaryWeapons["weapon_sh_smg1"] =       { type="smg1", name="MP7", price=800, model="models/weapons/w_smg1.mdl", fov=70, offset=Vector(5,-4,2), ang=Angle(0, -160, 20) }
GM.SecondaryWeapons["weapon_sh_p90"] =         { type="smg1", name="P90", price=750, model="models/weapons/w_smg_p90.mdl", fov=20, offset=Vector(-50,-2,-20) }

-- Shotguns
GM.SecondaryWeapons["weapon_sh_pumpshotgun2"] = { type="buckshot", name="Pump M3 Shotgun", price=600, model="models/weapons/w_shot_m3super90.mdl", fov=20, offset=Vector(-50,0,-20) }

-- Other
GM.SecondaryWeapons["weapon_sh_crowbar"] =      { type="battery", name="Crowbar", price=500, model="models/weapons/w_crowbar.mdl", fov=20, ang=Angle(-30,145,0),offset=Vector(-40,-2,-20) }

GM.WeaponAttachments = {
	["suppressor"] = {
		printname = "Silencer",
		cost = 250,
		type = "muzzle",
	},
	["m145"] = {
		printname = "Acough",
		cost = 1000,
		type = "optics",
	},
	["rds"] = {
		printname = "Dot Sight",
		cost = 500,
		type = "optics",
	},
	["scope"] = {
		printname = "Ranger Scope",
		cost = 1250,
		type = "optics",
	},	
	["slugs"] = {
		printname = "Slug Rounds",
		cost = 250,
		type = "ammo",
    },
    ["aim"] = {
        printname = "Aimpoint",
        cost = 500,
        type = "optics",
    },
	["laser"] = {
		printname = "Laser",
		cost = 300,
		type = "light",
	}
}

GM.ValidWeapons = table.Merge( table.Merge({},GM.PrimaryWeapons), GM.SecondaryWeapons )

GM.Explosives = {}
GM.Explosives["weapon_sh_grenade"] = { ammo=2, name="Hand Grenade", price=2, model="models/weapons/w_eq_fraggrenade.mdl", cook=true,offset=Vector(-10,0.5,-5), fov=13 }
GM.Explosives["weapon_sh_flash"] =   { ammo=2, name="Flash Bang", price=1, model="models/weapons/w_eq_flashbang.mdl", cook=true,offset=Vector(-10,0.5,-5), fov=17 }
GM.Explosives["weapon_sh_c4"] =      { ammo=1, name="C4 Explosive", price=100, model="models/weapons/w_c4_planted.mdl", fov=20, ang=Angle(-30,145,0),offset=Vector(-40,-2,-20) }

GM.Ammo = {}
GM.Ammo["buckshot"] = 	{ type="Normal", name="Shotgun Shells", price=1, model="models/Items/BoxBuckshot.mdl" }
GM.Ammo["ar2"] =      	{ type="Normal", name="Rifle Rounds", price=0.50, model="models/Items/BoxMRounds.mdl" }
GM.Ammo["smg1"] =     	{ type="Normal", name="SMG Rounds", price=0.25, model="models/Items/BoxSRounds.mdl" }
GM.Ammo["pistol"] =   	{ type="Normal", name="Pistol Rounds", price=0.1, model="models/Items/BoxSRounds.mdl" }
GM.Ammo["battery"] =   	{ type="Normal", name="Charges", price=1, model="models/Items/battery.mdl" }
GM.Ammo["rpg_round"] = 	{ type="Normal", name="RPG Rounds", price=20, model="models/Weapons/W_missile_closed.mdl" }

GM.Hats = {}
GM.Hats["bucket"] =       { name="Bucket", model="models/props_junk/MetalBucket01a.mdl", pos=Vector(1,0,3), ang=Angle(190,90,0), price=4.99 }
GM.Hats["traffic_cone"] = { name="Traffic Cone", model="models/props_junk/TrafficCone001a.mdl", pos=Vector(-6,0,17), ang=Angle(30,0,0), price=9.99 }
GM.Hats["pot"] =          { name="Pot", model="models/props_interiors/pot02a.mdl", pos=Vector(-2.75,-4.5,3.5), ang=Angle(-135,-30,0), price=4.99 }
GM.Hats["hard_hat"] =     { name="Hard Hat", model="models/props_2fort/hardhat001.mdl", pos=Vector(1,0,4), ang=Angle(40,0,0), price=14.99 }
GM.Hats["bunny_ears"] =   { name="Bunny Ears", model="models/player/items/scout/scout_ttg_max.mdl", pos=Vector(26.5,0,-66.5), ang=Angle(20,180,0), price=19.99 }

GM.DonatorHats = {}
GM.DonatorHats["crown"] = { name="Crown", model="models/player/items/demo/crown.mdl", pos=Vector(2,0,3), ang=Angle(40,0,0) }

GM.AdminHats ={}
GM.AdminHats["crown"] = { name="Crown", model="models/player/items/demo/crown.mdl", pos=Vector(2,0,3), ang=Angle(40,0,0) }

GM.ValidHats = table.Merge( table.Merge({},GM.Hats), GM.DonatorHats, GM.AdminHats )

GM.DefaultPlayerModel = "models/player/Kleiner.mdl"

GM.PlayerModels = {
	["alyx"] = "models/player/alyx.mdl",
	["barney"] = "models/player/barney.mdl",	
	["breen"] = "models/player/breen.mdl",		
	["combine"] = "models/player/combine_soldier.mdl",				
	["prison"] = "models/player/combine_soldier_prisonguard.mdl",
	["super"] = "models/player/combine_super_soldier.mdl",				
	["eli"] = "models/player/eli.mdl",			
	["gman"] = "models/player/gman_high.mdl",		
	["kleiner"] = "models/player/Kleiner.mdl",
	["scientist"] = "models/player/Kleiner.mdl",
	["monk"] = "models/player/monk.mdl",		
	["mossman"] = "models/player/mossman.mdl",
	["mossmanarctic"] = "models/player/mossman_arctic.mdl",
	["gina"] = "models/player/mossman.mdl",
	["odessa"] = "models/player/odessa.mdl",		
	["police"] = "models/player/police.mdl",	
	["policefem"] = "models/player/police_fem.mdl",	
	["stripped"] = "models/player/soldier_stripped.mdl",
    ["chell"] = "models/player/p2_chell.mdl",
	["magnusson"] = "models/player/magnusson.mdl",
    
    ["doda"] = "models/player/dod_german.mdl",
    ["dodg"] = "models/player/dod_american.mdl",

	["female7"] = "models/player/Group03/female_01.mdl",
	["female8"] = "models/player/Group03/female_02.mdl",
	["female9"] = "models/player/Group03/female_03.mdl",
	["female10"] = "models/player/Group03/female_04.mdl",
	["female11"] = "models/player/Group03/female_06.mdl",

	["male10"] = "models/player/Group03/male_01.mdl",
	["male11"] = "models/player/Group03/male_02.mdl",
	["male12"] = "models/player/Group03/male_03.mdl",
	["male13"] = "models/player/Group03/male_04.mdl",
	["male14"] = "models/player/Group03/male_05.mdl",
	["male15"] = "models/player/Group03/male_06.mdl",
	["male16"] = "models/player/Group03/male_07.mdl",
	["male17"] = "models/player/Group03/male_08.mdl",
	["male18"] = "models/player/Group03/male_09.mdl",
	
    ["hostage01"] = "models/player/hostage/hostage_01.mdl",
    ["hostage02"] = "models/player/hostage/hostage_02.mdl",
    ["hostage03"] = "models/player/hostage/hostage_03.mdl",
    ["hostage04"] = "models/player/hostage/hostage_04.mdl",
    
	["urban"] = "models/player/urban.mdl",
	["swat"] = "models/player/swat.mdl",
	["gasmask"] = "models/player/gasmask.mdl",
	["riot"] = "models/player/riot.mdl",
	["leet"] = "models/player/leet.mdl",
	["guerilla"] = "models/player/guerilla.mdl",
	["phoenix"] = "models/player/Phoenix.mdl",
	["arctic"] = "models/player/arctic.mdl"
}

GM.DonatorPlayerModels = {
}

GM.ValidPlayerModels = table.Merge( table.Merge({},GM.PlayerModels), GM.DonatorPlayerModels )

GM.StatisticsEventNames = {
	name = "Last Recorded Name",
	kills = "Kills",
	deaths = "Deaths",
	dmgtaken = "Damage Taken",
	dmginflicted = "Damage Inflicted",
	bulletsfired = "Rounds Fired",
	bulletshit = "Rounds Hit",
	reloads = "Number of times Reloaded",
	ironsights = "Number of times Iron Sighted",
	propsplaced = "Props Placed",
	propsdestroyed = "Props Destroyed",
	longestalive = "Longest time alive",
	gbuxhighestmul = "GBux Highest Multiplier",
	gbuxmoneyearned = "GBux Earned",
	steps = "Number of Steps",
	jumps = "Number of Jumps",
	crouches = "Number of Crouches"
}

-- ----------------------------------------------------------------------------------------------------

GM.ConVars = {}

GM.GameOver				= false
GM.GameOverTeam 		= 0
GM.GameOverWinner		= nil
GM.GameOverModels		= nil
GM.GameOverTime			= 0
GM.GameOverRealTime		= 0
GM.GameOverGraceTime	= 6
GM.LastGameReset		= 0 -- Used for timelimit check when the game is reset by either a same map vote or manually reset

GM.CountDownEnd = -1
GM.CountDownTitle = ""
GM.CountDownLua = "" -- Lua to run when the timer ends

GM.MapList = {}
GM.VotingMode = 0
GM.WinningMap = ""

function DoPropSpawnedEffect( e ) end

function GM:InitConVars()
	GAMEMODE.ConVars.FragLimit = GetConVar( "mp_fraglimit" )
	GAMEMODE.ConVars.TimeLimit = GetConVar( "mp_timelimit" )
	GAMEMODE.ConVars.FriendlyFire = GetConVar( "mp_friendlyfire" )
	
	GAMEMODE.ConVars.RespawnTime = CreateConVar( "sh_respawntime", "4", {FCVAR_GAMEDLL,FCVAR_NOTIFY,FCVAR_ARCHIVE,FCVAR_REPLICATED} )
	GAMEMODE.ConVars.ImmuneTime = CreateConVar( "sh_immunetime", "4", {FCVAR_GAMEDLL,FCVAR_NOTIFY,FCVAR_ARCHIVE} )
	
	for k, t in pairs( self.WeaponAttachments ) do
		CreateClientConVar( "attach_".. k.. "_primary", "0", true, true )
		CreateClientConVar( "attach_".. k.. "_secondary", "0", true, true )
	end
	
	if SERVER then
		GAMEMODE.ConVars.VoteEnabled = CreateConVar( "sh_voteenabled", "1", {FCVAR_GAMEDLL,FCVAR_NOTIFY,FCVAR_ARCHIVE} )
		GAMEMODE.ConVars.VoteDelay = CreateConVar( "sh_votedelay", "5", {FCVAR_GAMEDLL,FCVAR_NOTIFY,FCVAR_ARCHIVE} )
		GAMEMODE.ConVars.VoteTime = CreateConVar( "sh_votetime", "15", {FCVAR_GAMEDLL,FCVAR_NOTIFY,FCVAR_ARCHIVE} )
		GAMEMODE.ConVars.ChangeMapDelay = CreateConVar( "sh_changemapdelay", "4", {FCVAR_GAMEDLL,FCVAR_NOTIFY,FCVAR_REPLICATED,FCVAR_ARCHIVE} )
		SetGlobalInt( "mp_fraglimit", GAMEMODE.ConVars.FragLimit:GetInt() )
		GAMEMODE.ConVars.GBuxMPM = CreateConVar( "sh_gbux_mpm", "6", {FCVAR_GAMEDLL,FCVAR_NOTIFY,FCVAR_ARCHIVE} )
		GAMEMODE.ConVars.GBuxMPK = CreateConVar( "sh_gbux_mpk", "1.00", {FCVAR_GAMEDLL,FCVAR_NOTIFY,FCVAR_ARCHIVE} )
		GAMEMODE.ConVars.SpawnCheckDist = CreateConVar( "sh_spawncheckdist", "1000", {FCVAR_GAMEDLL,FCVAR_NOTIFY,FCVAR_ARCHIVE} )
		
		GAMEMODE.ConVars.ReinitRespawn = CreateConVar( "sh_reinitrespawn", "0", {FCVAR_GAMEDLL,FCVAR_NOTIFY,FCVAR_ARCHIVE} )
	elseif CLIENT then
		GAMEMODE.ConVars.HUDEnabled = CreateClientConVar( "sh_hudenabled", "1", true, false )
		GAMEMODE.ConVars.HUDMinimal = CreateClientConVar( "sh_hudminimal", "1", true, false )
		GAMEMODE.ConVars.HUDCompass = CreateClientConVar( "sh_compass", "1", true, false )
		GAMEMODE.ConVars.HUDComPosX = CreateClientConVar( "sh_composx", "0.5", true, false )
		GAMEMODE.ConVars.HUDComPosY = CreateClientConVar( "sh_composy", "0.992", true, false )
		GAMEMODE.ConVars.HUDComRed = CreateClientConVar( "sh_comred", "255", true, false )
		GAMEMODE.ConVars.HUDComGreen = CreateClientConVar( "sh_comgreen", "255", true, false )
		GAMEMODE.ConVars.HUDComBlue = CreateClientConVar( "sh_comblue", "255", true, false )
		GAMEMODE.ConVars.HUDComSpeed = CreateClientConVar( "sh_comspeed", "1", true, false )
		GAMEMODE.ConVars.HUDComTD = CreateClientConVar( "sh_comtd", "1", true, false )
		GAMEMODE.ConVars.GBux_Offset = CreateClientConVar( "sh_gbuxoffset", "0", true, false )
		
		GAMEMODE.ConVars.HitSound = CreateClientConVar( "sh_hitsound", "1", true, false )
		GAMEMODE.ConVars.HitIndicator = CreateClientConVar( "sh_hitindicator", "1", true, false )
		GAMEMODE.ConVars.HitRed = CreateClientConVar( "sh_hitred", "255", true, false )
		GAMEMODE.ConVars.HitGreen = CreateClientConVar( "sh_hitgreen", "255", true, false )
		GAMEMODE.ConVars.HitBlue = CreateClientConVar( "sh_hitblue", "255", true, false )
		
		GAMEMODE.ConVars.VoiceChannel = CreateClientConVar( "sh_voice_channel", "1", true, true )
		GAMEMODE.ConVars.VoiceAlwaysHearPublic = CreateClientConVar( "sh_voice_alwayshearpublic", "0", true, true )
		GAMEMODE.ConVars.VoiceAlwaysHearTeam = CreateClientConVar( "sh_voice_alwayshearteam", "0", true, true )
		
		GAMEMODE.ConVars.FXImpactEffects = CreateClientConVar( "sh_fx_impacteffects", "1", true, false )
		GAMEMODE.ConVars.FXImpactEffectsDetailed = CreateClientConVar( "sh_fx_detailedimpacteffects", "1", true, false )
		GAMEMODE.ConVars.FXImpactEffectsSmokey = CreateClientConVar( "sh_fx_smokeyimpacteffects", "1", true, false )
		GAMEMODE.ConVars.FXMuzzleEffects = CreateClientConVar( "sh_fx_muzzleeffects", "1", true, false )
		GAMEMODE.ConVars.FXExplosiveEffects = CreateClientConVar( "sh_fx_explosiveeffects", "1", true, false )
		GAMEMODE.ConVars.FXDynamicWeldLight = CreateClientConVar( "sh_fx_dynamicweldlight", "1", true, false )
		
		GAMEMODE.ConVars.PPHurtBlur = CreateClientConVar( "sh_pp_hurtblur", "1", true, false )
		GAMEMODE.ConVars.PPBloodSplat = CreateClientConVar( "sh_pp_bloodsplat", "1", true, false )
		GAMEMODE.ConVars.PPSpawnProt = CreateClientConVar( "sh_pp_spawnprot", "1", true, false )
		GAMEMODE.ConVars.PPVignette = CreateClientConVar( "sh_pp_vignette", "0", true, false )
		GAMEMODE.ConVars.PPVignetteOpacity = CreateClientConVar( "sh_pp_vignette_opacity", "60", true, false )
		
	end
end

-- ----------------------------------------------------------------------------------------------------
function GM:GetWeaponAttachments( strWepClass )
	local wep = weapons.Get( strWepClass )
	return wep and wep.VElements or nil
end

function GM:WeaponCanUseAttachment( strWepClass, strAttachment )
	local att = self:GetWeaponAttachments( strWepClass )
	return (att and att[strAttachment]) and true or false
end

-- ----------------------------------------------------------------------------------------------------

-- Added equipment sfx and no footstep sounds when crouched
local sndLeftFoot = {
	"npc/metropolice/gear1.wav",
	"npc/metropolice/gear3.wav",
	"npc/metropolice/gear5.wav"
}
local sndRightFoot = {
	"npc/metropolice/gear2.wav",
	"npc/metropolice/gear4.wav",
	"npc/metropolice/gear6.wav"
}
function GM:PlayerFootstep( ply, vPos, iFoot, strSoundName, fVolume, pFilter )
	ply:AddStatistic( "steps", 1 )
	
	local speed = ply:GetVelocity():Length()
	if speed < 145 then return true end -- No foot steps when crouched
	if CLIENT then return end -- Don't have the client play the equipment sounds
	
	local vel =  math.Clamp( speed/160, 0, 1 ) * 30 + math.Clamp( (speed-300)/200, 0, 1 ) * 50
	vel = vel + 1

	-- 0 - Left, 1 - Right
	if iFoot == 0 then -- Left
		ply:EmitSound( sndLeftFoot[math.random(1,3)], vel, math.random(95,105) )
	else -- Right
		ply:EmitSound( sndRightFoot[math.random(1,3)], vel, math.random(95,105) )
	end
end

function GM:PlayerSwitchWeapon( ply, wep )
	if not IsValid( wep ) then return end
	--ErrorNoHalt( "Weapon changed to "..tostring(wep).."\n" )
	
	local standing, ducking = Vector(0,0,59), Vector(0,0,40) -- ar2
	if wep.HoldType then
		--if wep.HoldType == "ar2" then
		--	standing = Vector(0,0,59)
		--	ducking = Vector(0,0,40)
		--else
		if wep.HoldType == "pistol" then
			standing = Vector(0,0,64)
			ducking = Vector(0,0,42)
		elseif wep.HoldType == "grenade" then
			standing = Vector(0,0,64)
			ducking = Vector(0,0,43)
		elseif wep.HoldType == "slam" then
			standing = Vector(0,0,62)
			ducking = Vector(0,0,42)
		end
	end
	
	ply:SetViewOffset( standing )
	ply:SetViewOffsetDucked( ducking )
end

function GM:ShouldCollide( a, b )
	if a:IsPlayer() and b:IsPlayer() and ((a:Team() ~= 50 and a:Team() == b:Team()) or a:GetGod() or b:GetGod()) then
		return false
	end
	return true
end

-- ----------------------------------------------------------------------------------------------------

function GM:StartCountDown( length, title, lua_sv, lua_cl, rf )
	if SERVER then
		--See sv_networking.lua, GM.Net:BroadcastCountdown
		-- local rf = rf
		-- if !rf then
		-- 	rf = RecipientFilter()
		-- 	rf:AddAllPlayers()
		-- end
		-- umsg.Start( "sh_countdown", rf )
		--   umsg.Short( length or 0 )
		--   umsg.String( title or "" )
		--   umsg.String( lua_cl )
		-- umsg.End()

		self.Net:BroadcastCountdown( length or 0, title or "", lua_cl or "" )
	end

	-- This NEVER used to happen - TODO: FIX
	local offset = 0
	if CLIENT and LocalPlayer and IsValid( LocalPlayer() ) and LocalPlayer().Ping then
		offset = LocalPlayer():Ping() / 1000
	end
	
	self.CountDownEnd = (CurTime()+length) - offset
	self.CountDownTitle = title
	self.CountDownLua = lua_sv
end

--See cl_networking.lua, net.Receive( "sh_countdown", function( intMsgLen ) ... )
-- usermessage.Hook( "sh_countdown", function(um) GAMEMODE:CancelCountDown(true) GAMEMODE:StartCountDown( um:ReadShort(), um:ReadString(), um:ReadString() ) end )

function GM:CancelCountDown( nosend )
	if SERVER and !nosend then
		self.Net:BroadcastCancelCountdown( length or 0, title or "", lua_cl or "" )
		
		--See sv_networking.lua, GM.Net:BroadcastCancelCountdown		
		-- local rf = RecipientFilter()
		-- rf:AddAllPlayers()
		-- umsg.Start( "sh_cancelcountdown", rf )
		-- umsg.End()
	end

	self.CountDownEnd = -1
	self.CountDownTitle = ""
	self.CountDownLua = ""
end
--See cl_networking.lua, net.Receive( "sh_cancelcountdown", function( intMsgLen ) ... )
-- usermessage.Hook( "sh_cancelcountdown", function() GAMEMODE:CancelCountDown() end )

-- ----------------------------------------------------------------------------------------------------

function UTIL_PRound( n, precision )
	local m = 10^(precision or 0)
	return math.floor( m*n + 0.50 ) / m
end

function UTIL_FormatMoney( amount )
	local negative = amount < 0
	amount = math.abs( amount )
	return Format( (!negative and "$" or "- $").."%d.%02d", math.floor(amount), math.floor( (amount-math.floor(amount))*100 ) )
end

function UTIL_FormatTime( seconds, show_hours )
	if show_hours then
		local h = math.floor( seconds / 3600 )
		local m = math.floor( seconds % 3600 / 60 )
		local s = math.floor( seconds % 3600 % 60 )
		return Format( "%d:%02d:%02d", h, m, s )
	end
	
	local m = math.floor( seconds / 60 )
	local s = math.floor( seconds % 60 )
	return Format( "%d:%02d", m, s )
end

-- ---------------------------------------------------------------------------------------------------
--Ragdoll remover (prevents clutter)
timer.Create("sh_deleteragdolls",120,0,function()
	for k, v in pairs(ents.FindByClass("prop_ragdoll")) do
		if v:IsValid()
			v:Remove()
		end
	end
end)
