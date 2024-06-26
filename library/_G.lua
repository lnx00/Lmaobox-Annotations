---@diagnostic disable:duplicate-set-field
---@meta

---Prints message to console. Each argument is printed on a new line.
---@param ... any
function _G.print(msg, ...) end

---Prints a colored message to console. Each argument is printed on a new line.
---@param r integer
---@param g integer
---@param b integer
---@param a integer
---@param ... any
function _G.printc(r, g, b, a, ...) end

---Loads a Lua script from given file.
---@param scriptPath string
---@return boolean success
function _G.LoadScript(scriptPath) end

---Unloads a Lua script from given file.
---@param scriptPath string
---@return boolean success
function _G.UnloadScript(scriptPath) end

---Returns current script's file name.
---@return string scriptPath
---@nodiscard
function _G.GetScriptName() end

---Prints Lua Table to console.
---@param a table?
---@param indent integer?
function _G.printLuaTable(a, indent) end

--[[ Global Constants ]]

-- UserCmd buttons
IN_ATTACK = (1 << 0)
IN_JUMP = (1 << 1)
IN_DUCK = (1 << 2)
IN_FORWARD = (1 << 3)
IN_BACK = (1 << 4)
IN_USE = (1 << 5)
IN_CANCEL = (1 << 6)
IN_LEFT = (1 << 7)
IN_RIGHT = (1 << 8)
IN_MOVELEFT = (1 << 9)
IN_MOVERIGHT = (1 << 10)
IN_ATTACK2 = (1 << 11)
IN_RUN = (1 << 12)
IN_RELOAD = (1 << 13)
IN_ALT1 = (1 << 14)
IN_ALT2 = (1 << 15)
IN_SCORE = (1 << 16)
IN_SPEED = (1 << 17)
IN_WALK = (1 << 18)
IN_ZOOM = (1 << 19)
IN_WEAPON1 = (1 << 20)
IN_WEAPON2 = (1 << 21)
IN_BULLRUSH = (1 << 22)
IN_GRENADE2 = (1 << 24)
IN_ATTACK3 = (1 << 25)

-- Buttons
BUTTON_CODE_INVALID = -1
BUTTON_CODE_NONE = 0
KEY_FIRST = 0
KEY_NONE = KEY_FIRST
KEY_0 = 1
KEY_1 = 2
KEY_2 = 3
KEY_3 = 4
KEY_4 = 5
KEY_5 = 6
KEY_6 = 7
KEY_7 = 8
KEY_8 = 9
KEY_9 = 10
KEY_A = 11
KEY_B = 12
KEY_C = 13
KEY_D = 14
KEY_E = 15
KEY_F = 16
KEY_G = 17
KEY_H = 18
KEY_I = 19
KEY_J = 20
KEY_K = 21
KEY_L = 22
KEY_M = 23
KEY_N = 24
KEY_O = 25
KEY_P = 26
KEY_Q = 27
KEY_R = 28
KEY_S = 29
KEY_T = 30
KEY_U = 31
KEY_V = 32
KEY_W = 33
KEY_X = 34
KEY_Y = 35
KEY_Z = 36
KEY_PAD_0 = 37
KEY_PAD_1 = 38
KEY_PAD_2 = 39
KEY_PAD_3 = 40
KEY_PAD_4 = 41
KEY_PAD_5 = 42
KEY_PAD_6 = 43
KEY_PAD_7 = 44
KEY_PAD_8 = 45
KEY_PAD_9 = 46
KEY_PAD_DIVIDE = 47
KEY_PAD_MULTIPLY = 48
KEY_PAD_MINUS = 49
KEY_PAD_PLUS = 50
KEY_PAD_ENTER = 51
KEY_PAD_DECIMAL = 52
KEY_LBRACKET = 53
KEY_RBRACKET = 54
KEY_SEMICOLON = 55
KEY_APOSTROPHE = 56
KEY_BACKQUOTE = 57
KEY_COMMA = 58
KEY_PERIOD = 59
KEY_SLASH = 60
KEY_BACKSLASH = 61
KEY_MINUS = 62
KEY_EQUAL = 63
KEY_ENTER = 64
KEY_SPACE = 65
KEY_BACKSPACE = 66
KEY_TAB = 67
KEY_CAPSLOCK = 68
KEY_NUMLOCK = 69
KEY_ESCAPE = 70
KEY_SCROLLLOCK = 71
KEY_INSERT = 72
KEY_DELETE = 73
KEY_HOME = 74
KEY_END = 75
KEY_PAGEUP = 76
KEY_PAGEDOWN = 77
KEY_BREAK = 78
KEY_LSHIFT = 79
KEY_RSHIFT = 80
KEY_LALT = 81
KEY_RALT = 82
KEY_LCONTROL = 83
KEY_RCONTROL = 84
KEY_LWIN = 85
KEY_RWIN = 86
KEY_APP = 87
KEY_UP = 88
KEY_LEFT = 89
KEY_DOWN = 90
KEY_RIGHT = 91
KEY_F1 = 92
KEY_F2 = 93
KEY_F3 = 94
KEY_F4 = 95
KEY_F5 = 96
KEY_F6 = 97
KEY_F7 = 98
KEY_F8 = 99
KEY_F9 = 100
KEY_F10 = 101
KEY_F11 = 102
KEY_F12 = 103
KEY_CAPSLOCKTOGGLE = 104
KEY_NUMLOCKTOGGLE = 105
KEY_SCROLLLOCKTOGGLE = 106
KEY_LAST = KEY_SCROLLLOCKTOGGLE
KEY_COUNT = KEY_LAST - KEY_FIRST + 1
MOUSE_FIRST = KEY_LAST + 1
MOUSE_LEFT = MOUSE_FIRST
MOUSE_RIGHT = MOUSE_FIRST + 1
MOUSE_MIDDLE = MOUSE_FIRST + 2
MOUSE_4 = MOUSE_FIRST + 3
MOUSE_5 = MOUSE_FIRST + 4
MOUSE_WHEEL_UP = MOUSE_FIRST + 5
MOUSE_WHEEL_DOWN = MOUSE_FIRST + 6

-- Lifestate
LIFE_ALIVE = 0
LIFE_DYING = 1
LIFE_DEAD = 2
LIFE_RESPAWNABLE = 3
LIFE_DISCARDAIM_BODY = 4

-- UserMessage
Geiger = 0
Train = 1
HudText = 2
SayText = 3
SayText2 = 4
TextMsg = 5
ResetHUD = 6
GameTitle = 7
ItemPickup = 8
ShowMenu = 9
Shake = 10
Fade = 11
VGUIMenu = 12
Rumble = 13
CloseCaption = 14
SendAudio = 15
VoiceMask = 16
RequestState = 17
Damage = 18
HintText = 19
KeyHintText = 20
HudMsg = 21
AmmoDenied = 22
AchievementEvent = 23
UpdateRadar = 24
VoiceSubtitle = 25
HudNotify = 26
HudNotifyCustom = 27
PlayerStatsUpdate = 28
MapStatsUpdate = 29
PlayerIgnited = 30
PlayerIgnitedInv = 31
HudArenaNotify = 32
UpdateAchievement = 33
TrainingMsg = 34
TrainingObjective = 35
DamageDodged = 36
PlayerJarated = 37
PlayerExtinguished = 38
PlayerJaratedFade = 39
PlayerShieldBlocked = 40
BreakModel = 41
CheapBreakModel = 42
BreakModel_Pumpkin = 43
BreakModelRocketDud = 44
CallVoteFailed = 45
VoteStart = 46
VotePass = 47
VoteFailed = 48
VoteSetup = 49
PlayerBonusPoints = 50
RDTeamPointsChanged = 51
SpawnFlyingBird = 52
PlayerGodRayEffect = 53
PlayerTeleportHomeEffect = 54
MVMStatsReset = 55
MVMPlayerEvent = 56
MVMResetPlayerStats = 57
MVMWaveFailed = 58
MVMAnnouncement = 59
MVMPlayerUpgradedEvent = 60
MVMVictory = 61
MVMWaveChange = 62
MVMLocalPlayerUpgradesClear = 63
MVMLocalPlayerUpgradesValue = 64
MVMResetPlayerWaveSpendingStats = 65
MVMLocalPlayerWaveSpendingValue = 66
MVMResetPlayerUpgradeSpending = 67
MVMServerKickTimeUpdate = 68
PlayerLoadoutUpdated = 69
PlayerTauntSoundLoopStart = 70
PlayerTauntSoundLoopEnd = 71
ForcePlayerViewAngles = 72
BonusDucks = 73
EOTLDuckEvent = 74
PlayerPickupWeapon = 75
QuestObjectiveCompleted = 76
SPHapWeapEvent = 77
HapDmg = 78
HapPunch = 79
HapSetDrag = 80
HapSetConst = 81
HapMeleeContact = 82

-- TF2 Weapon base IDs
TF_WEAPON_NONE = 0
TF_WEAPON_BAT = 1
TF_WEAPON_BAT_WOOD = 2
TF_WEAPON_BOTTLE = 3
TF_WEAPON_FIREAXE = 4
TF_WEAPON_CLUB = 5
TF_WEAPON_CROWBAR = 6
TF_WEAPON_KNIFE = 7
TF_WEAPON_FISTS = 8
TF_WEAPON_SHOVEL = 9
TF_WEAPON_WRENCH = 10
TF_WEAPON_BONESAW = 11
TF_WEAPON_SHOTGUN_PRIMARY = 12
TF_WEAPON_SHOTGUN_SOLDIER = 13
TF_WEAPON_SHOTGUN_HWG = 14
TF_WEAPON_SHOTGUN_PYRO = 15
TF_WEAPON_SCATTERGUN = 16
TF_WEAPON_SNIPERRIFLE = 17
TF_WEAPON_MINIGUN = 18
TF_WEAPON_SMG = 19
TF_WEAPON_SYRINGEGUN_MEDIC = 20
TF_WEAPON_TRANQ = 21
TF_WEAPON_ROCKETLAUNCHER = 22
TF_WEAPON_GRENADELAUNCHER = 23
TF_WEAPON_PIPEBOMBLAUNCHER = 24
TF_WEAPON_FLAMETHROWER = 25
TF_WEAPON_GRENADE_NORMAL = 26
TF_WEAPON_GRENADE_CONCUSSION = 27
TF_WEAPON_GRENADE_NAIL = 28
TF_WEAPON_GRENADE_MIRV = 29
TF_WEAPON_GRENADE_MIRV_DEMOMAN = 30
TF_WEAPON_GRENADE_NAPALM = 31
TF_WEAPON_GRENADE_GAS = 32
TF_WEAPON_GRENADE_EMP = 33
TF_WEAPON_GRENADE_CALTROP = 34
TF_WEAPON_GRENADE_PIPEBOMB = 35
TF_WEAPON_GRENADE_SMOKE_BOMB = 36
TF_WEAPON_GRENADE_HEAL = 37
TF_WEAPON_GRENADE_STUNBALL = 38
TF_WEAPON_GRENADE_JAR = 39
TF_WEAPON_GRENADE_JAR_MILK = 40
TF_WEAPON_PISTOL = 41
TF_WEAPON_PISTOL_SCOUT = 42
TF_WEAPON_REVOLVER = 43
TF_WEAPON_NAILGUN = 44
TF_WEAPON_PDA = 45
TF_WEAPON_PDA_ENGINEER_BUILD = 46
TF_WEAPON_PDA_ENGINEER_DESTROY = 47
TF_WEAPON_PDA_SPY = 48
TF_WEAPON_BUILDER = 49
TF_WEAPON_MEDIGUN = 50
TF_WEAPON_GRENADE_MIRVBOMB = 51
TF_WEAPON_FLAMETHROWER_ROCKET = 52
TF_WEAPON_GRENADE_DEMOMAN = 53
TF_WEAPON_SENTRY_BULLET = 54
TF_WEAPON_SENTRY_ROCKET = 55
TF_WEAPON_DISPENSER = 56
TF_WEAPON_INVIS = 57
TF_WEAPON_FLAREGUN = 58
TF_WEAPON_LUNCHBOX = 59
TF_WEAPON_JAR = 60
TF_WEAPON_COMPOUND_BOW = 61
TF_WEAPON_BUFF_ITEM = 62
TF_WEAPON_PUMPKIN_BOMB = 63
TF_WEAPON_SWORD = 64
TF_WEAPON_DIRECTHIT = 65
TF_WEAPON_LIFELINE = 66
TF_WEAPON_LASER_POINTER = 67
TF_WEAPON_DISPENSER_GUN = 68
TF_WEAPON_SENTRY_REVENGE = 69
TF_WEAPON_JAR_MILK = 70
TF_WEAPON_HANDGUN_SCOUT_PRIMARY = 71
TF_WEAPON_BAT_FISH = 72
TF_WEAPON_CROSSBOW = 73
TF_WEAPON_STICKBOMB = 74
TF_WEAPON_HANDGUN_SCOUT_SEC = 75
TF_WEAPON_SODA_POPPER = 76
TF_WEAPON_SNIPERRIFLE_DECAP = 77
TF_WEAPON_RAYGUN = 78
TF_WEAPON_PARTICLE_CANNON = 79
TF_WEAPON_MECHANICAL_ARM = 80
TF_WEAPON_DRG_POMSON = 81
TF_WEAPON_BAT_GIFTWRAP = 82
TF_WEAPON_GRENADE_ORNAMENT = 83
TF_WEAPON_RAYGUN_REVENGE = 84
TF_WEAPON_PEP_BRAWLER_BLASTER = 85
TF_WEAPON_CLEAVER = 86
TF_WEAPON_GRENADE_CLEAVER = 87
TF_WEAPON_STICKY_BALL_LAUNCHER = 88
TF_WEAPON_GRENADE_STICKY_BALL = 89
TF_WEAPON_SHOTGUN_BUILDING_RESCUE = 90
TF_WEAPON_CANNON = 91
TF_WEAPON_THROWABLE = 92
TF_WEAPON_GRENADE_THROWABLE = 93
TF_WEAPON_PDA_SPY_BUILD = 94
TF_WEAPON_GRENADE_WATERBALLOON = 95
TF_WEAPON_HARVESTER_SAW = 96
TF_WEAPON_SPELLBOOK = 97
TF_WEAPON_SPELLBOOK_PROJECTILE = 98
TF_WEAPON_SNIPERRIFLE_CLASSIC = 99
TF_WEAPON_PARACHUTE = 100
TF_WEAPON_GRAPPLINGHOOK = 101
TF_WEAPON_PASSTIME_GUN = 102
TF_WEAPON_CHARGED_SMG = 103
TF_WEAPON_BREAKABLE_SIGN = 104
TF_WEAPON_ROCKETPACK = 105
TF_WEAPON_SLAP = 106
TF_WEAPON_JAR_GAS = 107
TF_WEAPON_GRENADE_JAR_GAS = 108
TF_WEAPON_FLAME_BALL = 109

-- TF2 Conds
TFCond_Slowed = 0
TFCond_Zoomed = 1
TFCond_Disguising = 2
TFCond_Disguised = 3
TFCond_Cloaked = 4
TFCond_Ubercharged = 5
TFCond_TeleportedGlow = 6
TFCond_Taunting = 7
TFCond_UberchargeFading = 8
TFCond_Unknown1 = 9
TFCond_CloakFlicker = 9
TFCond_Teleporting = 10
TFCond_Kritzkrieged = 11
TFCond_Unknown2 = 12
TFCond_TmpDamageBonus = 12
TFCond_DeadRingered = 13
TFCond_Bonked = 14
TFCond_Dazed = 15
TFCond_Buffed = 16
TFCond_Charging = 17
TFCond_DemoBuff = 18
TFCond_CritCola = 19
TFCond_InHealRadius = 20
TFCond_Healing = 21
TFCond_OnFire = 22
TFCond_Overhealed = 23
TFCond_Jarated = 24
TFCond_Bleeding = 25
TFCond_DefenseBuffed = 26
TFCond_Milked = 27
TFCond_MegaHeal = 28
TFCond_RegenBuffed = 29
TFCond_MarkedForDeath = 30
TFCond_NoHealingDamageBuff = 31
TFCond_SpeedBuffAlly = 32
TFCond_HalloweenCritCandy = 33
TFCond_CritCanteen = 34
TFCond_CritDemoCharge = 35
TFCond_CritHype = 36
TFCond_CritOnFirstBlood = 37
TFCond_CritOnWin = 38
TFCond_CritOnFlagCapture = 39
TFCond_CritOnKill = 40
TFCond_RestrictToMelee = 41
TFCond_DefenseBuffNoCritBlock = 42
TFCond_Reprogrammed = 43
TFCond_CritMmmph = 44
TFCond_DefenseBuffMmmph = 45
TFCond_FocusBuff = 46
TFCond_DisguiseRemoved = 47
TFCond_MarkedForDeathSilent = 48
TFCond_DisguisedAsDispenser = 49
TFCond_Sapped = 50
TFCond_UberchargedHidden = 51
TFCond_UberchargedCanteen = 52
TFCond_HalloweenBombHead = 53
TFCond_HalloweenThriller = 54
TFCond_RadiusHealOnDamage = 55
TFCond_CritOnDamage = 56
TFCond_UberchargedOnTakeDamage = 57
TFCond_UberBulletResist = 58
TFCond_UberBlastResist = 59
TFCond_UberFireResist = 60
TFCond_SmallBulletResist = 61
TFCond_SmallBlastResist = 62
TFCond_SmallFireResist = 63
TFCond_Stealthed = 64
TFCond_MedigunDebuff = 65
TFCond_StealthedUserBuffFade = 66
TFCond_BulletImmune = 67
TFCond_BlastImmune = 68
TFCond_FireImmune = 69
TFCond_PreventDeath = 70
TFCond_MVMBotRadiowave = 71
TFCond_HalloweenSpeedBoost = 72
TFCond_HalloweenQuickHeal = 73
TFCond_HalloweenGiant = 74
TFCond_HalloweenTiny = 75
TFCond_HalloweenInHell = 76
TFCond_HalloweenGhostMode = 77
TFCond_MiniCritOnKill = 78
TFCond_DodgeChance = 79
TFCond_ObscuredSmoke = 79
TFCond_Parachute = 80
TFCond_BlastJumping = 81
TFCond_HalloweenKart = 82
TFCond_HalloweenKartDash = 83
TFCond_BalloonHead = 84
TFCond_MeleeOnly = 85
TFCond_SwimmingCurse = 86
TFCond_HalloweenKartNoTurn = 87
TFCond_FreezeInput = 87
TFCond_HalloweenKartCage = 88
TFCond_HasRune = 89
TFCond_RuneStrength = 90
TFCond_RuneHaste = 91
TFCond_RuneRegen = 92
TFCond_RuneResist = 93
TFCond_RuneVampire = 94
TFCond_RuneWarlock = 95
TFCond_RunePrecision = 96
TFCond_RuneAgility = 97
TFCond_GrapplingHook = 98
TFCond_GrapplingHookSafeFall = 99
TFCond_GrapplingHookLatched = 100
TFCond_GrapplingHookBleeding = 101
TFCond_AfterburnImmune = 102
TFCond_RuneKnockout = 103
TFCond_RuneImbalance = 104
TFCond_CritRuneTemp = 105
TFCond_PasstimeInterception = 106
TFCond_SwimmingNoEffects = 107
TFCond_EyeaductUnderworld = 108
TFCond_KingRune = 109
TFCond_PlagueRune = 110
TFCond_SupernovaRune = 111
TFCond_Plague = 112
TFCond_KingAura = 113
TFCond_SpawnOutline = 114
TFCond_KnockedIntoAir = 115
TFCond_CompetitiveWinner = 116
TFCond_CompetitiveLoser = 117
TFCond_NoTaunting_DEPRECATED = 118
TFCond_HealingDebuff = 118
TFCond_PasstimePenaltyDebuff = 119
TFCond_GrappledToPlayer = 120
TFCond_GrappledByPlayer = 121
TFCond_ParachuteDeployed = 122
TFCond_Gas = 123
TFCond_BurningPyro = 124
TFCond_RocketPack = 125
TFCond_LostFooting = 126
TFCond_AirCurrent = 127

-- TF2 Custom codes (for GameEvents)
TF_CUSTOM_AIM_HEADSHOT = 1
TF_CUSTOM_BACKSTAB = 2
TF_CUSTOM_BURNING = 3
TF_CUSTOM_WRENCH_FIX = 4
TF_CUSTOM_MINIGUN = 5
TF_CUSTOM_SUICIDE = 6
TF_CUSTOM_TAUNT_HADOUKEN = 7
TF_CUSTOM_BURNING_FLARE = 8
TF_CUSTOM_TAUNT_HIGH_NOON = 9
TF_CUSTOM_TAUNT_GRAND_SLAM = 10
TF_CUSTOM_PENETRATE_MY_TEAM = 11
TF_CUSTOM_PENETRATE_ALL_PLAYERS = 12
TF_CUSTOM_TAUNT_FENCING = 13
TF_CUSTOM_PENETRATE_AIM_HEADSHOT = 14
TF_CUSTOM_TAUNT_ARROW_STAB = 15
TF_CUSTOM_TELEFRAG = 16
TF_CUSTOM_BURNING_ARROW = 17
TF_CUSTOM_FLYINGBURN = 18
TF_CUSTOM_PUMPKIN_BOMB = 19
TF_CUSTOM_DECAPITATION = 20
TF_CUSTOM_TAUNT_GRENADE = 21
TF_CUSTOM_BASEBALL = 22
TF_CUSTOM_CHARGE_IMPACT = 23
TF_CUSTOM_TAUNT_BARBARIAN_SWING = 24
TF_CUSTOM_AIR_STICKY_BURST = 25
TF_CUSTOM_DEFENSIVE_STICKY = 26
TF_CUSTOM_PICKAXE = 27
TF_CUSTOM_ROCKET_DIRECTHIT = 28
TF_CUSTOM_TAUNT_UBERSLICE = 29
TF_CUSTOM_PLAYER_SENTRY = 30
TF_CUSTOM_STANDARD_STICKY = 31
TF_CUSTOM_SHOTGUN_REVENGE_CRIT = 32
TF_CUSTOM_TAUNT_ENGINEER_SMASH = 33
TF_CUSTOM_BLEEDING = 34
TF_CUSTOM_GOLD_WRENCH = 35
TF_CUSTOM_CARRIED_BUILDING = 36
TF_CUSTOM_COMBO_PUNCH = 37
TF_CUSTOM_TAUNT_ENGINEER_ARM = 38
TF_CUSTOM_FISH_KILL = 39
TF_CUSTOM_TRIGGER_HURT = 40
TF_CUSTOM_DECAPITATION_BOSS = 41
TF_CUSTOM_STICKBOMB_EXPLOSION = 42
TF_CUSTOM_AEGIS_ROUND = 43
TF_CUSTOM_FLARE_EXPLOSION = 44
TF_CUSTOM_BOOTS_STOMP = 45
TF_CUSTOM_PLASMA = 46
TF_CUSTOM_PLASMA_CHARGED = 47
TF_CUSTOM_PLASMA_GIB = 48
TF_CUSTOM_PRACTICE_STICKY = 49
TF_CUSTOM_EYEBALL_ROCKET = 50
TF_CUSTOM_AIM_HEADSHOT_DECAPITATION = 51
TF_CUSTOM_TAUNT_ARMAGEDDON = 52
TF_CUSTOM_FLARE_PELLET = 53
TF_CUSTOM_CLEAVER = 54
TF_CUSTOM_CLEAVER_CRIT = 55
TF_CUSTOM_SAPPER_RECORDER_DEATH = 56
TF_CUSTOM_MERASMUS_PLAYER_BOMB = 57
TF_CUSTOM_MERASMUS_GRENADE = 58
TF_CUSTOM_MERASMUS_ZAP = 59
TF_CUSTOM_MERASMUS_DECAPITATION = 60
TF_CUSTOM_CANNONBALL_PUSH = 61

-- TF2 Classes
TF2_Scout = 1
TF2_Soldier = 3
TF2_Pyro = 7
TF2_Demoman = 4
TF2_Heavy = 6
TF2_Engineer = 9
TF2_Medic = 5
TF2_Sniper = 2
TF2_Spy = 8

-- TraceLine masks
CONTENTS_EMPTY = 0
CONTENTS_SOLID = 0x1
CONTENTS_WINDOW = 0x2
CONTENTS_AUX = 0x4
CONTENTS_GRATE = 0x8
CONTENTS_SLIME = 0x10
CONTENTS_WATER = 0x20
CONTENTS_BLOCKLOS = 0x40
CONTENTS_OPAQUE = 0x80
CONTENTS_TESTFOGVOLUME = 0x100
CONTENTS_UNUSED = 0x200
CONTENTS_BLOCKLIGHT = 0x400
CONTENTS_TEAM1 = 0x800
CONTENTS_TEAM2 = 0x1000
CONTENTS_IGNORE_NODRAW_OPAQUE = 0x2000
CONTENTS_MOVEABLE = 0x4000
CONTENTS_AREAPORTAL = 0x8000
CONTENTS_PLAYERCLIP = 0x10000
CONTENTS_MONSTERCLIP = 0x20000
CONTENTS_CURRENT_0 = 0x40000
CONTENTS_CURRENT_90 = 0x80000
CONTENTS_CURRENT_180 = 0x100000
CONTENTS_CURRENT_270 = 0x200000
CONTENTS_CURRENT_UP = 0x400000
CONTENTS_CURRENT_DOWN = 0x800000
CONTENTS_ORIGIN = 0x1000000
CONTENTS_MONSTER = 0x2000000
CONTENTS_DEBRIS = 0x4000000
CONTENTS_DETAIL = 0x8000000
CONTENTS_TRANSLUCENT = 0x10000000
CONTENTS_LADDER = 0x20000000
CONTENTS_HITBOX = 0x40000000
SURF_LIGHT = 0x0001
SURF_SKY2D = 0x0002
SURF_SKY = 0x0004
SURF_WARP = 0x0008
SURF_TRANS = 0x0010
SURF_NOPORTAL = 0x0020
SURF_TRIGGER = 0x0040
SURF_NODRAW = 0x0080
SURF_HINT = 0x0100
SURF_SKIP = 0x0200
SURF_NOLIGHT = 0x0400
SURF_BUMPLIGHT = 0x0800
SURF_NOSHADOWS = 0x1000
SURF_NODECALS = 0x2000
SURF_NOPAINT = SURF_NODECALS
SURF_NOCHOP = 0x4000
SURF_HITBOX = 0x8000
MASK_ALL = (0xFFFFFFFF)
MASK_SOLID = (CONTENTS_SOLID|CONTENTS_MOVEABLE|CONTENTS_WINDOW|CONTENTS_MONSTER|CONTENTS_GRATE)
MASK_PLAYERSOLID = (CONTENTS_SOLID|CONTENTS_MOVEABLE|CONTENTS_PLAYERCLIP|CONTENTS_WINDOW|CONTENTS_MONSTER|CONTENTS_GRATE)
MASK_NPCSOLID = (CONTENTS_SOLID|CONTENTS_MOVEABLE|CONTENTS_MONSTERCLIP|CONTENTS_WINDOW|CONTENTS_MONSTER|CONTENTS_GRATE)
MASK_NPCFLUID = (CONTENTS_SOLID|CONTENTS_MOVEABLE|CONTENTS_MONSTERCLIP|CONTENTS_WINDOW|CONTENTS_MONSTER)
MASK_WATER = (CONTENTS_WATER|CONTENTS_MOVEABLE|CONTENTS_SLIME)
MASK_OPAQUE = (CONTENTS_SOLID|CONTENTS_MOVEABLE|CONTENTS_OPAQUE)
MASK_OPAQUE_AND_NPCS = (MASK_OPAQUE|CONTENTS_MONSTER)
MASK_BLOCKLOS = (CONTENTS_SOLID|CONTENTS_MOVEABLE|CONTENTS_BLOCKLOS)
MASK_BLOCKLOS_AND_NPCS = (MASK_BLOCKLOS|CONTENTS_MONSTER)
MASK_VISIBLE = (MASK_OPAQUE|CONTENTS_IGNORE_NODRAW_OPAQUE)
MASK_VISIBLE_AND_NPCS = (MASK_OPAQUE_AND_NPCS|CONTENTS_IGNORE_NODRAW_OPAQUE)
MASK_SHOT = (CONTENTS_SOLID|CONTENTS_MOVEABLE|CONTENTS_MONSTER|CONTENTS_WINDOW|CONTENTS_DEBRIS|CONTENTS_HITBOX)
MASK_SHOT_BRUSHONLY = (CONTENTS_SOLID|CONTENTS_MOVEABLE|CONTENTS_WINDOW|CONTENTS_DEBRIS)
MASK_SHOT_HULL = (CONTENTS_SOLID|CONTENTS_MOVEABLE|CONTENTS_MONSTER|CONTENTS_WINDOW|CONTENTS_DEBRIS|CONTENTS_GRATE)
MASK_SHOT_PORTAL = (CONTENTS_SOLID|CONTENTS_MOVEABLE|CONTENTS_WINDOW|CONTENTS_MONSTER)
MASK_SOLID_BRUSHONLY = (CONTENTS_SOLID|CONTENTS_MOVEABLE|CONTENTS_WINDOW|CONTENTS_GRATE)
MASK_PLAYERSOLID_BRUSHONLY = (CONTENTS_SOLID|CONTENTS_MOVEABLE|CONTENTS_WINDOW|CONTENTS_PLAYERCLIP|CONTENTS_GRATE)
MASK_NPCSOLID_BRUSHONLY = (CONTENTS_SOLID|CONTENTS_MOVEABLE|CONTENTS_WINDOW|CONTENTS_MONSTERCLIP|CONTENTS_GRATE)
MASK_NPCWORLDSTATIC = (CONTENTS_SOLID|CONTENTS_WINDOW|CONTENTS_MONSTERCLIP|CONTENTS_GRATE)
MASK_NPCWORLDSTATIC_FLUID = (CONTENTS_SOLID|CONTENTS_WINDOW|CONTENTS_MONSTERCLIP)
MASK_SPLITAREAPORTAL = (CONTENTS_WATER|CONTENTS_SLIME)
MASK_CURRENT = (CONTENTS_CURRENT_0|CONTENTS_CURRENT_90|CONTENTS_CURRENT_180|CONTENTS_CURRENT_270|CONTENTS_CURRENT_UP|CONTENTS_CURRENT_DOWN)
MASK_DEADSOLID = (CONTENTS_SOLID|CONTENTS_PLAYERCLIP|CONTENTS_WINDOW|CONTENTS_GRATE)
MAX_COORD_INTEGER = (16384)
COORD_EXTENT = (2 * MAX_COORD_INTEGER)
MAX_TRACE_LENGTH = (1.732050807569 * COORD_EXTENT)

-- Material flags
MATERIAL_VAR_DEBUG = (1 << 0)
MATERIAL_VAR_NO_DEBUG_OVERRIDE = (1 << 1)
MATERIAL_VAR_NO_DRAW = (1 << 2)
MATERIAL_VAR_USE_IN_FILLRATE_MODE = (1 << 3)
MATERIAL_VAR_VERTEXCOLOR = (1 << 4)
MATERIAL_VAR_VERTEXALPHA = (1 << 5)
MATERIAL_VAR_SELFILLUM = (1 << 6)
MATERIAL_VAR_ADDITIVE = (1 << 7)
MATERIAL_VAR_ALPHATEST = (1 << 8)
MATERIAL_VAR_ZNEARER = (1 << 10)
MATERIAL_VAR_MODEL = (1 << 11)
MATERIAL_VAR_FLAT = (1 << 12)
MATERIAL_VAR_NOCULL = (1 << 13)
MATERIAL_VAR_NOFOG = (1 << 14)
MATERIAL_VAR_IGNOREZ = (1 << 15)
MATERIAL_VAR_DECAL = (1 << 16)
MATERIAL_VAR_ENVMAPSPHERE = (1 << 17)
MATERIAL_VAR_ENVMAPCAMERASPACE = (1 << 19)
MATERIAL_VAR_BASEALPHAENVMAPMASK = (1 << 20)
MATERIAL_VAR_TRANSLUCENT = (1 << 21)
MATERIAL_VAR_NORMALMAPALPHAENVMAPMASK = (1 << 22)
MATERIAL_VAR_NEEDS_SOFTWARE_SKINNING = (1 << 23)
MATERIAL_VAR_OPAQUETEXTURE = (1 << 24)
MATERIAL_VAR_ENVMAPMODE = (1 << 25)
MATERIAL_VAR_SUPPRESS_DECALS = (1 << 26)
MATERIAL_VAR_HALFLAMBERT = (1 << 27)
MATERIAL_VAR_WIREFRAME = (1 << 28)
MATERIAL_VAR_ALLOWALPHATOCOVERAGE = (1 << 29)
MATERIAL_VAR_ALPHA_MODIFIED_BY_PROXY = (1 << 30)
MATERIAL_VAR_VERTEXFOG = (1 << 31)

--Loadout slots
LOADOUT_POSITION_PRIMARY = 0
LOADOUT_POSITION_SECONDARY = 1
LOADOUT_POSITION_MELEE = 2
LOADOUT_POSITION_UTILITY = 3
LOADOUT_POSITION_BUILDING = 4
LOADOUT_POSITION_PDA = 5
LOADOUT_POSITION_PDA2 = 6
LOADOUT_POSITION_HEAD = 7
LOADOUT_POSITION_MISC = 8
LOADOUT_POSITION_ACTION = 9
LOADOUT_POSITION_MISC2 = 10
LOADOUT_POSITION_TAUNT = 11
LOADOUT_POSITION_TAUNT2 = 12
LOADOUT_POSITION_TAUNT3 = 13
LOADOUT_POSITION_TAUNT4 = 14
LOADOUT_POSITION_TAUNT5 = 15
LOADOUT_POSITION_TAUNT6 = 16
LOADOUT_POSITION_TAUNT7 = 17
LOADOUT_POSITION_TAUNT8 = 18

--Round states
ROUND_INIT = 0
ROUND_PREGAME = 1
ROUND_STARTGAME = 2
ROUND_PREROUND = 3
ROUND_RUNNING = 4
ROUND_TEAMWIN = 5
ROUND_RESTART = 6
ROUND_STALEMATE = 7
ROUND_GAMEOVER = 8
ROUND_BONUS = 9
ROUND_BETWEEN_ROUNDS = 10

-- PLayer flags
FL_ONGROUND = (1 << 0)
FL_DUCKING = (1 << 1)
FL_WATERJUMP = (1 << 2)
FL_ONTRAIN = (1 << 3)
FL_INRAIN = (1 << 4)
FL_FROZEN = (1 << 5)
FL_ATCONTROLS = (1 << 6)
FL_CLIENT = (1 << 7)
FL_FAKECLIENT = (1 << 8)
FL_INWATER = (1 << 9)

-- Font flags
FONTFLAG_NONE = 0
FONTFLAG_ITALIC = 0x001
FONTFLAG_UNDERLINE = 0x002
FONTFLAG_STRIKEOUT = 0x004
FONTFLAG_SYMBOL = 0x008
FONTFLAG_ANTIALIAS = 0x010
FONTFLAG_GAUSSIANBLUR = 0x020
FONTFLAG_ROTARY = 0x040
FONTFLAG_DROPSHADOW = 0x080
FONTFLAG_ADDITIVE = 0x100
FONTFLAG_OUTLINE = 0x200
FONTFLAG_CUSTOM = 0x400
FONTFLAG_BITMAP = 0x800

-- Match abandon status
MATCHABANDON_SAFE = 0
MATCHABANDON_NOPENALTY = 1
MATCHABANDON_PENTALTY = 2

-- File attributes
FILE_ATTRIBUTE_READONLY = 0x1
FILE_ATTRIBUTE_HIDDEN = 0x2
FILE_ATTRIBUTE_SYSTEM = 0x4
FILE_ATTRIBUTE_DIRECTORY = 0x10
FILE_ATTRIBUTE_ARCHIVE = 0x20
FILE_ATTRIBUTE_DEVICE = 0x40
FILE_ATTRIBUTE_NORMAL = 0x80
FILE_ATTRIBUTE_TEMPORARY = 0x100
FILE_ATTRIBUTE_SPARSE_FILE = 0x200
FILE_ATTRIBUTE_REPARSE_POINT = 0x400
FILE_ATTRIBUTE_COMPRESSED = 0x800
FILE_ATTRIBUTE_OFFLINE = 0x1000
FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 0x2000
FILE_ATTRIBUTE_ENCRYPTED = 0x4000
FILE_ATTRIBUTE_INTEGRITY_STREAM = 0x8000
FILE_ATTRIBUTE_VIRTUAL = 0x10000
FILE_ATTRIBUTE_NO_SCRUB_DATA = 0x20000
FILE_ATTRIBUTE_RECALL_ON_OPEN = 0x40000
FILE_ATTRIBUTE_PINNED = 0x80000
FILE_ATTRIBUTE_UNPINNED = 0x100000
FILE_ATTRIBUTE_RECALL_ON_DATA_ACCESS = 0x400000
INVALID_FILE_ATTRIBUTES = 0xFFFFFFFF

-- Signon states
SIGNONSTATE_NONE = 0
SIGNONSTATE_CHALLENGE = 1
SIGNONSTATE_CONNECTED = 2
SIGNONSTATE_NEW = 3
SIGNONSTATE_PRESPAWN = 4
SIGNONSTATE_SPAWN = 5
SIGNONSTATE_FULL = 6
SIGNONSTATE_CHANGELEVEL = 7

-- TF2 Hitbox
HITBOX_HEAD = 0
HITBOX_PELVIS = 1
HITBOX_SPINE_0 = 2
HITBOX_SPINE_1 = 3
HITBOX_SPINE_2 = 4
HITBOX_SPINE_3 = 5
HITBOX_UPPERARM_L = 6
HITBOX_LOWERARM_L = 7
HITBOX_HAND_L = 8
HITBOX_UPPERARM_R = 9
HITBOX_LOWERARM_R = 10
HITBOX_HAND_R = 11
HITBOX_HIP_L = 12
HITBOX_KNEE_L = 13
HITBOX_FOOT_L = 14
HITBOX_HIP_R = 15
HITBOX_KNEE_R = 16
HITBOX_FOOT_R = 17

-- TF2 Team
TEAM_UNASSIGNED = 0
TEAM_SPECTATOR = 1
TEAM_BLU = 2
TEAM_RED = 3

-- MoveType
MOVETYPE_NONE = 0
MOVETYPE_ISOMETRIC = 1
MOVETYPE_WALK = 2
MOVETYPE_STEP = 3
MOVETYPE_FLY = 4
MOVETYPE_FLYGRAVITY = 5
MOVETYPE_VPHYSICS = 6
MOVETYPE_PUSH = 7
MOVETYPE_NOCLIP = 8
MOVETYPE_LADDER = 9
MOVETYPE_OBSERVER = 10
MOVETYPE_CUSTOM = 11

-- RuneType
RUNETYPE_TEMP_NONE = 0
RUNETYPE_TEMP_CRIT = 1
RUNETYPE_TEMP_UBER = 2
