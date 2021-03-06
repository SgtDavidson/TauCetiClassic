//Used to process and handle roundstart quirks
// - quirk strings are used for faster checking in code
// - quirk datums are stored and hold different effects, as well as being a vector for applying quirk string
var/datum/subsystem/quirks/SSquirks

/datum/subsystem/quirks
	name = "Quirks"
	init_order = SS_INIT_QUIRKS
	priority   = SS_PRIORITY_QUIRKS
	flags      = SS_BACKGROUND
	wait       = SS_WAIT_QUIRKS

	var/list/processing = list()
	var/list/currentrun = list()

	var/list/quirks = list()		//Assoc. list of all roundstart quirk datum types; "name" = /path/
	var/list/quirk_points = list()	//Assoc. list of quirk names and their "point cost"; positive numbers are good quirks, and negative ones are bad
	var/list/quirk_objects = list()	//A list of all quirk objects in the game, since some may process
	var/list/quirk_blacklist = list() //A list a list of quirks that can not be used with each other. Format: list(quirk1,quirk2),list(quirk3,quirk4)
	var/list/quirk_blacklist_species = list() // Contains quirks and their list of blacklisted species.

/datum/subsystem/quirks/New()
	NEW_SS_GLOBAL(SSquirks)

/datum/subsystem/quirks/Initialize(timeofday)
	if(!quirks.len)
		SetupQuirks()

	quirk_blacklist = list(
		list("Light Drinker", "Alcohol Tolerance"),
		list("Strong mind", "Twitching"),
		list("Blind", "Nearsighted"),
		list("Low pain threshold", "High pain threshold")
		)

	quirk_blacklist_species = list(
		"Fatness" = list(DIONA, IPC, VOX),
		"Child of Nature" = list(HUMAN, SKRELL, TAJARAN, UNATHI, IPC, VOX),
		"Stress Eater" = list(DIONA, IPC),
		"High pain threshold" = list(DIONA, IPC),
		"Low pain threshold" = list(DIONA, IPC),
		"Alcohol Tolerance" = list(DIONA, IPC, SKRELL),
		"Light Drinker" = list(DIONA, IPC, SKRELL),
		"Coughing" = list(DIONA, IPC),
		"Seizures" = list(DIONA, IPC),
		"Tourette" = list(DIONA, VOX),
		"Nervous" = list(DIONA),
		"Strong mind" = list(DIONA, IPC)
		)

	..()

/datum/subsystem/quirks/stat_entry()
	..("P:[processing.len]")

/datum/subsystem/quirks/fire(resumed = 0)
	if (!resumed)
		src.currentrun = processing.Copy()
	//cache for sanic speed (lists are references anyways)
	var/list/currentrun = src.currentrun

	while(currentrun.len)
		var/datum/thing = currentrun[currentrun.len]
		currentrun.len--

		if(QDELETED(thing))
			processing -= thing
		else
			thing.process()

		if (MC_TICK_CHECK)
			return

/datum/subsystem/quirks/proc/SetupQuirks()
	// Sort by Positive, Negative, Neutral; and then by name
	var/list/quirk_list = sortList(subtypesof(/datum/quirk), /proc/cmp_quirk_asc)

	for(var/V in quirk_list)
		var/datum/quirk/T = V
		quirks[initial(T.name)] = T
		quirk_points[initial(T.name)] = initial(T.value)

/datum/subsystem/quirks/proc/AssignQuirks(mob/living/user, client/C, spawn_effects)
	GenerateQuirks(C)
	for(var/V in C.prefs.character_quirks)
		user.add_quirk(V, spawn_effects)

/datum/subsystem/quirks/proc/GenerateQuirks(client/user)
	if(user.prefs.character_quirks.len)
		return
	user.prefs.character_quirks = user.prefs.all_quirks
