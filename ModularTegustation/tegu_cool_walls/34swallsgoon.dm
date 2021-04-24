//Goonstation, a remminant of classic ss13. Although a lot of features from classic ss13 are kept there, the sprites are not, and they look cool.
//These use the "3/4" perspective, and looks like you are looking from above and at a angle.atom
//soul level: medium

//WALLS todo: more icon states/learn how the fuck concrete works
/datum/controller/subsystem/mapping/artstyle/proc/loadGoonPyro()
	/turf/closed/wall
		icon = 'goon/icons/turf/walls_supernorn.dmi'
		canSmoothWith = list(SMOOTH_GROUP_WALLS, SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_AIRLOCK)

	/turf/closed/wall/r_wall
		icon = 'goon/icons/turf/walls_supernorn_reinforced.dmi'
		canSmoothWith = list(SMOOTH_GROUP_WALLS, SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_AIRLOCK)

	// WINDOWS todo: see above
	/obj/structure/window/fulltile
		icon = 'goon/icons/obj/window_pyro.dmi'
		icon_state = "window"
		color = "#94bbd1"
		canSmoothWith = list(SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_WALLS, SMOOTH_GROUP_AIRLOCK)

	/obj/structure/window/reinforced/fulltile
		icon = 'goon/icons/obj/window_pyro.dmi'
		color = "#94bbd1"
		icon_state = "rwindow"
		alpha = 200
		smoothing_flags = SMOOTH_BITMASK
		smoothing_groups = list(SMOOTH_GROUP_WINDOW_FULLTILE)
		canSmoothWith = list(SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_WALLS, SMOOTH_GROUP_AIRLOCK)


	/*
	/obj/structure/window/reinforced/tinted/fulltile
		icon = 'goon/icons/obj/window_pyro.dmi'
		color = "#94bbd13b"
		icon_state = "window"
		alpha = 200
		canSmoothWith = list(SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_WALLS, SMOOTH_GROUP_AIRLOCK)
	*/

	/obj/structure/window/plasma/fulltile
		icon = 'goon/icons/obj/window_pyro.dmi'
		color = "#EE82EE"
		icon_state = "window"
		base_icon_state = "window"
		alpha = 200
		smoothing_flags = SMOOTH_BITMASK
		smoothing_groups = list(SMOOTH_GROUP_WINDOW_FULLTILE)
		canSmoothWith = list(SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_WALLS, SMOOTH_GROUP_AIRLOCK)

	/obj/structure/window/plasma/reinforced/fulltile
		icon = 'goon/icons/obj/window_pyro.dmi'
		color = "#EE82EE"
		icon_state = "rwindow"
		base_icon_state = "reinforced_window"
		alpha = 200
		smoothing_flags = SMOOTH_BITMASK
		smoothing_groups = list(SMOOTH_GROUP_WINDOW_FULLTILE)
		canSmoothWith = list(SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_WALLS, SMOOTH_GROUP_AIRLOCK)


	/obj/machinery/door/airlock/
		icon = 'goon/icons/obj/airlocks/public.dmi'
		icon_state = "closed"
		overlays_file = 'goon/icons/obj/airlocks/overlays.dmi'
		doorOpen = 'goon/sound/machinery/sound_machines_airlock_swoosh_temp.ogg'
		doorClose = 'goon/sound/machinery/sound_machines_airlock_swoosh_temp.ogg'
		doorDeni = 'goon/sound/machinery/sound_machines_airlock_deny.ogg' // i'm thinkin' Deni's

	/obj/machinery/door/airlock/Initialize()
		. = ..()
		set_smooth_dir()


	/*

	This proc looks like it makes no sense. Bear with me...


	Assuming:

	X = wall
	[] = airlock:


	X
	[]
	X
	odir = SOUTH / NORTH. We need it to face sideways so you can get through

	X[]X
	odir = EAST / WEST. We need it to face forwards so you can get through


	*/

	/obj/machinery/door/airlock/proc/set_smooth_dir() //I fucking hate this code and so should you :)
	//	for(var/atom/obstacle in view(1, src)) //Ghetto ass icon smooth
		var/odir = 0
		var/atom/found = null
		var/turf/north = get_turf(get_step(src,NORTH))
		if(north.density)
			found = north
			odir = NORTH
		var/turf/south = get_turf(get_step(src,SOUTH))
		if(south.density)
			found = south
			odir = SOUTH
		var/turf/east = get_turf(get_step(src,EAST))
		if(east.density)
			found = east
			odir = EAST
		var/turf/west = get_turf(get_step(src,WEST))
		if(west.density)
			found = west
			odir = WEST
		if(!found)
			for(var/atom/foo in get_step(src,NORTH))
				if(foo?.density)
					found = foo
					odir = NORTH
					break
			for(var/atom/foo in get_step(src,SOUTH))
				if(foo?.density)
					found = foo
					odir = SOUTH
					break
			for(var/atom/foo in get_step(src,EAST))
				if(foo?.density)
					found = foo
					odir = EAST
					break
			for(var/atom/foo in get_step(src,WEST))
				if(foo?.density)
					found = foo
					odir = WEST
					break
		if(odir == NORTH || odir == SOUTH)
			dir = EAST
		else
			dir = SOUTH
		return odir

	//same as above
	/obj/machinery/door/poddoor/proc/set_smooth_dir()
	//	for(var/atom/obstacle in view(1, src)) //Ghetto ass icon smooth
		var/odir = 0
		var/atom/found = null
		var/turf/north = get_turf(get_step(src,NORTH))
		if(north.density)
			found = north
			odir = NORTH
		var/turf/south = get_turf(get_step(src,SOUTH))
		if(south.density)
			found = south
			odir = SOUTH
		var/turf/east = get_turf(get_step(src,EAST))
		if(east.density)
			found = east
			odir = EAST
		var/turf/west = get_turf(get_step(src,WEST))
		if(west.density)
			found = west
			odir = WEST
		if(!found)
			for(var/atom/foo in get_step(src,NORTH))
				if(foo?.density)
					found = foo
					odir = NORTH
					break
			for(var/atom/foo in get_step(src,SOUTH))
				if(foo?.density)
					found = foo
					odir = SOUTH
					break
			for(var/atom/foo in get_step(src,EAST))
				if(foo?.density)
					found = foo
					odir = EAST
					break
			for(var/atom/foo in get_step(src,WEST))
				if(foo?.density)
					found = foo
					odir = WEST
					break
		if(odir == NORTH || odir == SOUTH)
			dir = EAST
		else
			dir = SOUTH
		return odir

	/obj/machinery/door/airlock/station
		name = "Standard airlock"
		icon = 'goon/icons/obj/airlocks/station.dmi'

	/obj/machinery/door/airlock/station/glass
		name = "Standard airlock"
		icon = 'goon/icons/obj/airlocks/station_glass.dmi'
		density = FALSE
		opacity = 0

	/obj/machinery/door/airlock/station/mining
		name = "Mining airlock"
		color = "#b88a3d"

	/obj/machinery/door/airlock/station/research
		name = "Research airlock"

	/obj/machinery/door/airlock/hatch
		name = "airtight hatch"
		icon = 'goon/icons/obj/airlocks/hatch.dmi'

	/obj/machinery/door/poddoor
		name = "Double blast door"
		icon = 'goon/icons/obj/airlocks/blastdoor.dmi'

	/obj/machinery/door/poddoor/preopen
		icon_state = "open"
		density = FALSE
		opacity = 0

	/obj/machinery/door/airlock/command
		name = "Command"
		icon = 'goon/icons/obj/airlocks/command.dmi'

	obj/machinery/door/poddoor/Initialize()
		. = ..()
		set_smooth_dir()

	/obj/machinery/door/airlock/highsecurity
		icon = 'goon/icons/obj/airlocks/vault.dmi'

	/obj/machinery/door/airlock/highsecurity/Initialize()
		. = ..()
		set_smooth_dir()

	/obj/machinery/door/airlock/wood
		icon = 'goon/icons/obj/airlocks/airlock_wood.dmi'

	/obj/machinery/door/airlock/command/glass
		icon = 'goon/icons/obj/airlocks/command_glass.dmi'
		opacity = 0
		glass = TRUE

	/obj/machinery/door/airlock/vault/
		icon = 'goon/icons/obj/airlocks/vault.dmi'
		icon_state = "closed"

	/obj/machinery/door/airlock/vault/Initialize()
		. = ..()
		set_smooth_dir()

	/obj/machinery/door/airlock/engineering
		icon = 'goon/icons/obj/airlocks/engineering.dmi'

	/obj/machinery/door/airlock/goon/engineering/glass
		icon = 'goon/icons/obj/airlocks/engineering_glass.dmi'
		opacity = 0
		glass = TRUE

	/obj/machinery/door/airlock/external
		name = "External airlock"
		icon = 'goon/icons/obj/airlocks/external.dmi'

	/obj/machinery/door/airlock/external/glass
		name = "External airlock"
		icon = 'goon/icons/obj/airlocks/external.dmi'
		opacity = 0
		glass = TRUE

	/obj/machinery/door/airlock/maintenance
		icon = 'goon/icons/obj/airlocks/maintenance.dmi'

	/obj/machinery/door/airlock/public
		name = "Public airlock"
		icon = 'goon/icons/obj/airlocks/public.dmi'

	/obj/machinery/door/airlock/public/glass
		icon = 'goon/icons/obj/airlocks/airlock_glass.dmi'
		opacity = 0
		glass = TRUE
	/*
	/obj/machinery/door/airlock/glass_large/ship
		icon = 'nsv13/icons/obj/machinery/doors/double.dmi'
		overlays_file = 'nsv13/icons/obj/machinery/doors/overlays_large.dmi'
	*/
	/obj/machinery/door/airlock/medical
		icon = 'goon/icons/obj/airlocks/medical.dmi'

	/obj/machinery/door/airlock/security
		icon = 'goon/icons/obj/airlocks/security.dmi'

	/obj/machinery/door/airlock/security/glass
		opacity = 0
		glass = TRUE
