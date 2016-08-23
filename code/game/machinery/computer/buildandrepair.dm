//This file was auto-corrected by findeclaration.exe on 25.5.2012 20:42:31

/obj/structure/computerframe
	density = 1
	anchored = 0
	name = "Computer-frame"
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "0"
	var/state = 0
	var/obj/item/weapon/circuitboard/circuit = null
//	weight = 1.0E8

/obj/item/weapon/circuitboard
	density = 0
	anchored = 0
	w_class = 2.0
	name = "Circuit board"
	icon = 'icons/obj/module.dmi'
	icon_state = "id_mod"
	item_state = "electronic"
	origin_tech = "programming=2"
	var/id = null
	var/frequency = null
	var/build_path = null
	var/board_type = "computer"
	var/list/req_components = null
	var/powernet = null
	var/list/records = null
	var/frame_desc = null
	var/contain_parts = 1

/obj/item/weapon/circuitboard/turbine_computer
	name = "circuit board (Turbine Computer)"
	build_path = /obj/machinery/computer/turbine_computer
	origin_tech = "programming=4;engineering=4;power=4"
/obj/item/weapon/circuitboard/telesci_console
	name = "circuit board (Telescience Console)"
	build_path = /obj/machinery/computer/telescience
	origin_tech = "programming=3;bluespace=2"
/obj/item/weapon/circuitboard/message_monitor
	name = "Circuit board (Message Monitor)"
	build_path = /obj/machinery/computer/message_monitor
	origin_tech = "programming=3"
/obj/item/weapon/circuitboard/security
	name = "Circuit board (Security)"
	build_path = /obj/machinery/computer/security
	var/network = list("SS13")
	req_access = list(access_security)
	var/locked = 1
	var/emagged = 0
/obj/item/weapon/circuitboard/aicore
	name = "Circuit board (AI core)"
	origin_tech = "programming=4;biotech=2"
	board_type = "other"
/obj/item/weapon/circuitboard/aiupload
	name = "Circuit board (AI Upload)"
	build_path = /obj/machinery/computer/aiupload
	origin_tech = "programming=4"
/obj/item/weapon/circuitboard/borgupload
	name = "Circuit board (Cyborg Upload)"
	build_path = /obj/machinery/computer/borgupload
	origin_tech = "programming=4"
/obj/item/weapon/circuitboard/med_data
	name = "Circuit board (Medical Records)"
	build_path = /obj/machinery/computer/med_data
/obj/item/weapon/circuitboard/pandemic
	name = "Circuit board (PanD.E.M.I.C. 2200)"
	build_path = /obj/machinery/computer/pandemic
	origin_tech = "programming=2;biotech=2"
/obj/item/weapon/circuitboard/scan_consolenew
	name = "Circuit board (DNA Machine)"
	build_path = /obj/machinery/computer/scan_consolenew
	origin_tech = "programming=2;biotech=2"
/obj/item/weapon/circuitboard/communications
	name = "Circuit board (Communications)"
	build_path = /obj/machinery/computer/communications
	origin_tech = "programming=2;magnets=2"
	var/cooldown = 0
/obj/item/weapon/circuitboard/communications/New()
	..()
	SSobj.processing |= src
/obj/item/weapon/circuitboard/communications/process()
	cooldown = max(cooldown - 1, 0)
/obj/item/weapon/circuitboard/card
	name = "Circuit board (ID Computer)"
	build_path = /obj/machinery/computer/card
/obj/item/weapon/circuitboard/card/centcom
	name = "Circuit board (CentCom ID Computer)"
	build_path = /obj/machinery/computer/card/centcom
//obj/item/weapon/circuitboard/shield
//	name = "Circuit board (Shield Control)"
//	build_path = /obj/machinery/computer/stationshield
/obj/item/weapon/circuitboard/teleporter
	name = "Circuit board (Teleporter)"
	build_path = /obj/machinery/computer/teleporter
	origin_tech = "programming=2;bluespace=2"
/obj/item/weapon/circuitboard/secure_data
	name = "Circuit board (Security Records)"
	build_path = /obj/machinery/computer/secure_data
/obj/item/weapon/circuitboard/skills
	name = "Circuit board (Employment Records)"
	build_path = /obj/machinery/computer/skills
/obj/item/weapon/circuitboard/stationalert
	name = "Circuit board (Station Alerts)"
	build_path = /obj/machinery/computer/station_alert
/obj/item/weapon/circuitboard/air_management
	name = "Circuit board (Atmospheric monitor)"
	build_path = /obj/machinery/computer/general_air_control
/obj/item/weapon/circuitboard/injector_control
	name = "Circuit board (Injector control)"
	build_path = /obj/machinery/computer/general_air_control/fuel_injection
/obj/item/weapon/circuitboard/atmos_alert
	name = "Circuit board (Atmospheric Alert)"
	build_path = /obj/machinery/computer/atmos_alert
/obj/item/weapon/circuitboard/pod
	name = "Circuit board (Massdriver control)"
	build_path = /obj/machinery/computer/pod
/obj/item/weapon/circuitboard/robotics
	name = "Circuit board (Robotics Control)"
	build_path = /obj/machinery/computer/robotics
	origin_tech = "programming=3"
/obj/item/weapon/circuitboard/drone_control
	name = "Circuit board (Drone Control)"
	build_path = /obj/machinery/computer/drone_control
	origin_tech = "programming=3"
/obj/item/weapon/circuitboard/cloning
	name = "Circuit board (Cloning)"
	build_path = /obj/machinery/computer/cloning
	origin_tech = "programming=3;biotech=3"
/obj/item/weapon/circuitboard/arcade
	name = "Circuit board (Arcade)"
	build_path = /obj/machinery/computer/arcade
	origin_tech = "programming=1"
/obj/item/weapon/circuitboard/turbine_control
	name = "Circuit board (Turbine control)"
	build_path = /obj/machinery/computer/turbine_computer
/obj/item/weapon/circuitboard/solar_control
	name = "Circuit board (Solar Control)"  //name fixed 250810
	build_path = /obj/machinery/power/solar_control
	origin_tech = "programming=2;powerstorage=2"
/obj/item/weapon/circuitboard/powermonitor
	name = "Circuit board (Power Monitor)"  //name fixed 250810
	build_path = /obj/machinery/computer/monitor
/obj/item/weapon/circuitboard/olddoor
	name = "Circuit board (DoorMex)"
	build_path = /obj/machinery/computer/pod/old
/obj/item/weapon/circuitboard/syndicatedoor
	name = "Circuit board (ProComp Executive)"
	build_path = /obj/machinery/computer/pod/old/syndicate
/obj/item/weapon/circuitboard/swfdoor
	name = "Circuit board (Magix)"
	build_path = /obj/machinery/computer/pod/old/swf
/obj/item/weapon/circuitboard/prisoner
	name = "Circuit board (Prisoner Management)"
	build_path = /obj/machinery/computer/prisoner
/obj/item/weapon/circuitboard/rdconsole
	name = "Circuit Board (RD Console)"
	build_path = /obj/machinery/computer/rdconsole/core
/obj/item/weapon/circuitboard/mecha_control
	name = "Circuit Board (Exosuit Control Console)"
	build_path = /obj/machinery/computer/mecha
/obj/item/weapon/circuitboard/rdservercontrol
	name = "Circuit Board (R&D Server Control)"
	build_path = /obj/machinery/computer/rdservercontrol
/obj/item/weapon/circuitboard/crew
	name = "Circuit board (Crew monitoring computer)"
	build_path = /obj/machinery/computer/crew
	origin_tech = "programming=3;biotech=2;magnets=2"
/obj/item/weapon/circuitboard/mech_bay_power_console
	name = "Circuit board (Mech Bay Power Control Console)"
	build_path = /obj/machinery/computer/mech_bay_power_console
	origin_tech = "programming=2;powerstorage=3"
/obj/item/weapon/circuitboard/ordercomp
	name = "Circuit board (Supply ordering console)"
	build_path = /obj/machinery/computer/ordercomp
	origin_tech = "programming=2"
/obj/item/weapon/circuitboard/supplycomp
	name = "Circuit board (Supply shuttle console)"
	build_path = /obj/machinery/computer/supplycomp
	origin_tech = "programming=3"
	var/contraband_enabled = 0
/*/obj/item/weapon/circuitboard/research_shuttle
	name = "Circuit board (Research Shuttle)"
	build_path = /obj/machinery/computer/research_shuttle
	origin_tech = "programming=2"*/
/obj/item/weapon/circuitboard/operating
	name = "Circuit board (Operating Computer)"
	build_path = /obj/machinery/computer/operating
	origin_tech = "programming=2;biotech=2"
/obj/item/weapon/circuitboard/comm_monitor
	name = "Circuit board (Telecommunications Monitor)"
	build_path = /obj/machinery/computer/telecomms/monitor
	origin_tech = "programming=3"
/obj/item/weapon/circuitboard/comm_server
	name = "Circuit board (Telecommunications Server Monitor)"
	build_path = /obj/machinery/computer/telecomms/server
	origin_tech = "programming=3"
/obj/item/weapon/circuitboard/comm_traffic
	name = "Circuitboard (Telecommunications Traffic Control)"
	build_path = /obj/machinery/computer/telecomms/traffic
	origin_tech = "programming=3"

/obj/item/weapon/circuitboard/curefab
	name = "Circuit board (Cure fab)"
	build_path = /obj/machinery/computer/curer
/obj/item/weapon/circuitboard/splicer
	name = "Circuit board (Disease Splicer)"
	build_path = /obj/machinery/computer/diseasesplicer

/*/obj/item/weapon/circuitboard/mining_shuttle
	name = "Circuit board (Mining Shuttle)"
	build_path = /obj/machinery/computer/mining_shuttle
	origin_tech = "programming=2"*/

/obj/item/weapon/circuitboard/mine_sci_shuttle
	name = "Circuit board (Mining Shuttle)"
	build_path = /obj/machinery/computer/mine_sci_shuttle
	origin_tech = "programming=2"

/obj/item/weapon/circuitboard/HolodeckControl // Not going to let people get this, but it's just here for future
	name = "Circuit board (Holodeck Control)"
	build_path = /obj/machinery/computer/HolodeckControl
	origin_tech = "programming=4"
/obj/item/weapon/circuitboard/aifixer
	name = "Circuit board (AI Integrity Restorer)"
	build_path = /obj/machinery/computer/aifixer
	origin_tech = "programming=3;biotech=2"
/obj/item/weapon/circuitboard/area_atmos
	name = "Circuit board (Area Air Control)"
	build_path = /obj/machinery/computer/area_atmos
	origin_tech = "programming=2"
/obj/item/weapon/circuitboard/prison_shuttle
	name = "Circuit board (Prison Shuttle)"
	build_path = /obj/machinery/computer/prison_shuttle
	origin_tech = "programming=2"
/obj/item/weapon/circuitboard/libraryconsole
	name = "circuit board (Library Visitor Console)"
	build_path = /obj/machinery/computer/libraryconsole
	origin_tech = "programming=1"


/obj/item/weapon/circuitboard/supplycomp/attackby(obj/item/I as obj, mob/user as mob)
	if(istype(I,/obj/item/device/multitool))
		var/catastasis = src.contraband_enabled
		var/opposite_catastasis
		if(catastasis)
			opposite_catastasis = "STANDARD"
			catastasis = "BROAD"
		else
			opposite_catastasis = "BROAD"
			catastasis = "STANDARD"

		switch( alert("Current receiver spectrum is set to: [catastasis]","Multitool-Circuitboard interface","Switch to [opposite_catastasis]","Cancel") )
		//switch( alert("Current receiver spectrum is set to: " {(src.contraband_enabled) ? ("BROAD") : ("STANDARD")} , "Multitool-Circuitboard interface" , "Switch to " {(src.contraband_enabled) ? ("STANDARD") : ("BROAD")}, "Cancel") )
			if("Switch to STANDARD","Switch to BROAD")
				src.contraband_enabled = !src.contraband_enabled

			if("Cancel")
				return
			else
				user << "DERP! BUG! Report this (And what you were doing to cause it) to Agouri"
	return

/obj/item/weapon/circuitboard/libraryconsole/attackby(obj/item/I as obj, mob/user as mob)
	if(istype(I,/obj/item/weapon/screwdriver))
		if(build_path == /obj/machinery/computer/libraryconsole/bookmanagement)
			name = "circuit board (Library Visitor Console)"
			build_path = /obj/machinery/computer/libraryconsole
			user << "<span class='notice'>Defaulting access protocols.</span>"
		else
			name = "circuit board (Book Inventory Management Console)"
			build_path = /obj/machinery/computer/libraryconsole/bookmanagement
			user << "<span class='notice'>Access protocols successfully updated.</span>"
	return

/obj/item/weapon/circuitboard/security/attackby(obj/item/I as obj, mob/user as mob)
	if(istype(I,/obj/item/weapon/card/emag))
		if(emagged)
			user << "Circuit lock is already removed."
			return
		user << "\blue You override the circuit lock and open controls."
		emagged = 1
		locked = 0
	else if(istype(I,/obj/item/weapon/card/id))
		if(emagged)
			user << "\red Circuit lock does not respond."
			return
		if(check_access(I))
			locked = !locked
			user << "\blue You [locked ? "" : "un"]lock the circuit controls."
		else
			user << "\red Access denied."
	else if(istype(I,/obj/item/device/multitool))
		if(locked)
			user << "\red Circuit controls are locked."
			return
		var/existing_networks = jointext(network,",")
		var/input = strip_html(input(usr, "Which networks would you like to connect this camera console circuit to? Seperate networks with a comma. No Spaces!\nFor example: SS13,Security,Secret ", "Multitool-Circuitboard interface", existing_networks))
		if(!input)
			usr << "No input found please hang up and try your call again."
			return
		var/list/tempnetwork = splittext(input, ",")
		tempnetwork = difflist(tempnetwork,RESTRICTED_CAMERA_NETWORKS,1)
		if(tempnetwork.len < 1)
			usr << "No network found please hang up and try your call again."
			return
		network = tempnetwork
	return

/obj/item/weapon/circuitboard/rdconsole/attackby(obj/item/I as obj, mob/user as mob)
	if(istype(I,/obj/item/weapon/screwdriver))
		user.visible_message("\blue \the [user] adjusts the jumper on the [src]'s access protocol pins.", "\blue You adjust the jumper on the access protocol pins.")
		switch(src.build_path)

			if(/obj/machinery/computer/rdconsole/core)
				src.name = "Circuit Board (RD Console - Robotics)"
				src.build_path = /obj/machinery/computer/rdconsole/robotics
				user << "\blue Access protocols set to robotics."

			if(/obj/machinery/computer/rdconsole/robotics)
				src.name = "Circuit Board (RD Console - Mining)"
				src.build_path = /obj/machinery/computer/rdconsole/mining
				user << "\blue Access protocols set to mining."

			if(/obj/machinery/computer/rdconsole/mining)
				src.name = "Circuit Board (RD Console)"
				src.build_path = /obj/machinery/computer/rdconsole/core
				user << "\blue Access protocols set to default."

		/*if(src.build_path == /obj/machinery/computer/rdconsole/core)
			src.name = "Circuit Board (RD Console - Robotics)"
			src.build_path = /obj/machinery/computer/rdconsole/robotics
			user << "\blue Access protocols set to robotics."
		else
			src.name = "Circuit Board (RD Console)"
			src.build_path = /obj/machinery/computer/rdconsole/core
			user << "\blue Access protocols set to default."*/
	return

/obj/structure/computerframe/attackby(obj/item/P as obj, mob/user as mob)
	switch(state)
		if(0)
			if(istype(P, /obj/item/weapon/wrench))
				playsound(src.loc, 'sound/items/Ratchet.ogg', 50, 1)
				if(do_after(user, 20, target = src))
					user << "\blue You wrench the frame into place."
					src.anchored = 1
					src.state = 1
			if(istype(P, /obj/item/weapon/weldingtool))
				var/obj/item/weapon/weldingtool/WT = P
				if(!WT.remove_fuel(0, user))
					user << "The welding tool must be on to complete this task."
					return
				playsound(src.loc, 'sound/items/Welder.ogg', 50, 1)
				if(do_after(user, 20, target = src))
					if(!src || !WT.isOn()) return
					user << "\blue You deconstruct the frame."
					new /obj/item/stack/sheet/metal( src.loc, 5 )
					qdel(src)
		if(1)
			if(istype(P, /obj/item/weapon/wrench))
				playsound(src.loc, 'sound/items/Ratchet.ogg', 50, 1)
				if(do_after(user, 20, target = src))
					user << "\blue You unfasten the frame."
					src.anchored = 0
					src.state = 0
			if(istype(P, /obj/item/weapon/circuitboard) && !circuit)
				var/obj/item/weapon/circuitboard/B = P
				if(B.board_type == "computer")
					playsound(src.loc, 'sound/items/Deconstruct.ogg', 50, 1)
					user << "\blue You place the circuit board inside the frame."
					icon_state = "1"
					circuit = P
					user.drop_item()
					circuit.add_fingerprint(user)
					P.loc = null
				else
					user << "\red This frame does not accept circuit boards of this type!"
			if(istype(P, /obj/item/weapon/screwdriver) && circuit)
				playsound(src.loc, 'sound/items/Screwdriver.ogg', 50, 1)
				user << "\blue You screw the circuit board into place."
				src.state = 2
				src.icon_state = "2"
			if(istype(P, /obj/item/weapon/crowbar) && circuit)
				playsound(src.loc, 'sound/items/Crowbar.ogg', 50, 1)
				user << "\blue You remove the circuit board."
				src.state = 1
				src.icon_state = "0"
				circuit.loc = src.loc
				src.circuit = null
		if(2)
			if(istype(P, /obj/item/weapon/screwdriver) && circuit)
				playsound(src.loc, 'sound/items/Screwdriver.ogg', 50, 1)
				user << "\blue You unfasten the circuit board."
				src.state = 1
				src.icon_state = "1"
			if(istype(P, /obj/item/weapon/cable_coil))
				if(P:amount >= 5)
					playsound(src.loc, 'sound/items/Deconstruct.ogg', 50, 1)
					if(do_after(user, 20, target = src))
						if(P)
							P:amount -= 5
							if(!P:amount) qdel(P)
							user << "\blue You add cables to the frame."
							src.state = 3
							src.icon_state = "3"
		if(3)
			if(istype(P, /obj/item/weapon/wirecutters))
				playsound(src.loc, 'sound/items/Wirecutter.ogg', 50, 1)
				user << "\blue You remove the cables."
				src.state = 2
				src.icon_state = "2"
				var/obj/item/weapon/cable_coil/A = new /obj/item/weapon/cable_coil( src.loc )
				A.amount = 5

			if(istype(P, /obj/item/stack/sheet/glass))
				if(P:amount >= 2)
					playsound(src.loc, 'sound/items/Deconstruct.ogg', 50, 1)
					if(do_after(user, 20, target = src))
						if(P)
							P:use(2)
							user << "\blue You put in the glass panel."
							src.state = 4
							src.icon_state = "4"
		if(4)
			if(istype(P, /obj/item/weapon/crowbar))
				playsound(src.loc, 'sound/items/Crowbar.ogg', 50, 1)
				user << "\blue You remove the glass panel."
				src.state = 3
				src.icon_state = "3"
				new /obj/item/stack/sheet/glass( src.loc, 2 )
			if(istype(P, /obj/item/weapon/screwdriver))
				playsound(src.loc, 'sound/items/Screwdriver.ogg', 50, 1)
				user << "\blue You connect the monitor."
				new src.circuit.build_path (src.loc, circuit)
				qdel(src)
