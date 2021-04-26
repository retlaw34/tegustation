/*
// Ah yes, skyrat. A infamous server with a history of enterprise resource planning. But I don't care about that, if you ignore that they have some sick sprites.
//These use the "classic" perspective, which is used by openss13.atom
//soul level: very low
/datum/controller/subsystem/mapping/artstyle/proc/loadSkyrat()
	/turf/closed/wall
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/wall.dmi'
		canSmoothWith = list(SMOOTH_GROUP_WALLS, SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_AIRLOCK)

	/turf/closed/wall/r_wall
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/reinforced_wall.dmi'

	/turf/closed/wall/rust
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/wall.dmi'
		icon_state = "wall-0"
		base_icon_state = "wall"

	/turf/closed/wall/r_wall/rust
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/reinforced_wall.dmi'
		icon_state = "reinforced_wall-0"
		base_icon_state = "reinforced_wall"

	/obj/structure/window/fulltile
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/window.dmi'
		canSmoothWith = list(SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_WALLS, SMOOTH_GROUP_AIRLOCK)

	/obj/structure/window/reinforced/fulltile
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/r_window.dmi'
		canSmoothWith = list(SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_WALLS, SMOOTH_GROUP_AIRLOCK)

	/obj/structure/window/reinforced/tinted/fulltile
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/r_window_tinted.dmi'
		icon_state = "reinforced_window-0"
		base_icon_state = "reinforced_window"
		canSmoothWith = list(SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_WALLS, SMOOTH_GROUP_AIRLOCK)

	/obj/structure/window/plasma/fulltile
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/window_plasma.dmi'
		icon_state = "window-0"
		base_icon_state = "window"
		canSmoothWith = list(SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_WALLS, SMOOTH_GROUP_AIRLOCK)

	/obj/structure/window/plasma/reinforced/fulltile
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/r_window_plasma.dmi'
		icon_state = "reinforced_window-0"
		base_icon_state = "reinforced_window"
		canSmoothWith = list(SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_WALLS, SMOOTH_GROUP_AIRLOCK)


	/obj/machinery/door/airlock
	//	var/obj/effect/overlay/vis_airlock/vis_overlay1
	//	var/obj/effect/overlay/vis_airlock/vis_overlay2
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/public.dmi'
		overlays_file = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/overlays.dmi'
		note_overlay_file = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/overlays.dmi'

		doorOpen = 'ModularTegustation/Tegusounds/tegu_cool_airlocks/skyrat_airlock_sounds/open.ogg'
		doorClose = 'ModularTegustation/Tegusounds/tegu_cool_airlocks/skyrat_airlock_sounds/close.ogg'
		doorDeni = 'ModularTegustation/Tegusounds/tegu_cool_airlocks/skyrat_airlock_sounds/access_denied.ogg'
		boltUp = 'ModularTegustation/Tegusounds/tegu_cool_airlocks/skyrat_airlock_sounds/bolts_up.ogg'
		boltDown = 'ModularTegustation/Tegusounds/tegu_cool_airlocks/skyrat_airlock_sounds/bolts_down.ogg'
		//noPower = 'sound/machines/doorclick.ogg'
		var/forcedOpen = 'ModularTegustation/Tegusounds/tegu_cool_airlocks/skyrat_airlock_sounds/open_force.ogg' //these two are unused.
		var/forcedClosed = 'ModularTegustation/Tegusounds/tegu_cool_airlocks/skyrat_airlock_sounds/close_force.ogg'
	/*
	/obj/machinery/door/airlock/Initialize()
		//overlay2
		vis_overlay1 = new()
		vis_overlay1.icon = overlays_file
		//overlay1
		vis_overlay2 = new()
		vis_overlay2.icon = overlays_file
		vis_overlay2.layer = layer
		vis_overlay2.plane = 1
		vis_contents += vis_overlay1
		vis_contents += vis_overlay2
		set_airlock_overlays()
		. = ..()
		*/

	/obj/machinery/door/airlock/command
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/command.dmi'

	/obj/machinery/door/airlock/security
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/security.dmi'

	/obj/machinery/door/airlock/engineering
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/engineering.dmi'

	/obj/machinery/door/airlock/medical
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/medical.dmi'

	/obj/machinery/door/airlock/maintenance
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/maintenance.dmi'

	/obj/machinery/door/airlock/maintenance/external
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/maintenanceexternal.dmi'

	/obj/machinery/door/airlock/mining
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/mining.dmi'

	/obj/machinery/door/airlock/atmos
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/atmos.dmi'

	/obj/machinery/door/airlock/research
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/research.dmi'

	/obj/machinery/door/airlock/freezer
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/freezer.dmi'

	/obj/machinery/door/airlock/science
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/science.dmi'

	/obj/machinery/door/airlock/virology
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/virology.dmi'

	//STATION MINERAL AIRLOCKS
	/obj/machinery/door/airlock/gold
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/gold.dmi'

	/obj/machinery/door/airlock/silver
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/silver.dmi'

	/obj/machinery/door/airlock/diamond
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/diamond.dmi'

	/obj/machinery/door/airlock/uranium
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/uranium.dmi'

	/obj/machinery/door/airlock/plasma
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/plasma.dmi'

	/obj/machinery/door/airlock/bananium
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/bananium.dmi'

	/obj/machinery/door/airlock/sandstone
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/sandstone.dmi'

	/obj/machinery/door/airlock/wood
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station/wood.dmi'

	//STATION 2 AIRLOCKS

	/obj/machinery/door/airlock/public
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station2/glass.dmi'
		overlays_file = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/station2/overlays.dmi'

	//EXTERNAL AIRLOCKS
	/obj/machinery/door/airlock/external
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/external/external.dmi'
		overlays_file = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/external/overlays.dmi'
		note_overlay_file = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/external/overlays.dmi'

	//CENTCOMM
	/obj/machinery/door/airlock/centcom
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/centcom/centcom.dmi'
		overlays_file = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/centcom/overlays.dmi'

	/obj/machinery/door/airlock/grunge
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/centcom/centcom.dmi'
		overlays_file = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/centcom/overlays.dmi'

	//VAULT
	/obj/machinery/door/airlock/vault
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/vault/vault.dmi'
		overlays_file = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/vault/overlays.dmi'

	//HATCH
	/obj/machinery/door/airlock/hatch
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/hatch/centcom.dmi'
		overlays_file = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/hatch/overlays.dmi'
		note_overlay_file = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/hatch/overlays.dmi'

	/obj/machinery/door/airlock/maintenance_hatch
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/hatch/maintenance.dmi'
		overlays_file = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/hatch/overlays.dmi'
		note_overlay_file = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/hatch/overlays.dmi'

	//HIGH SEC
	/obj/machinery/door/airlock/highsecurity
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/highsec/highsec.dmi'
		overlays_file = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/highsec/overlays.dmi'

	//GLASS
	/obj/machinery/door/airlock/glass_large
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/multi_tile/multi_tile.dmi'
		overlays_file = 'ModularTegustation/Teguicons/skyrat_cool_walls/airlocks/multi_tile/overlays.dmi'

	//FIRELOCKS
	/obj/machinery/door/firedoor
		name = "Emergency Shutter"
		desc = "Emergency air-tight shutter, capable of sealing off breached areas. This one has a glass panel."
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/firedoor_glass.dmi'
		var/door_open_sound = 'ModularTegustation/Tegusounds/tegu_cool_airlocks/skyrat_airlock_sounds/firedoor_open.ogg'
		var/door_close_sound = 'ModularTegustation/Tegusounds/tegu_cool_airlocks/skyrat_airlock_sounds/firedoor_open.ogg'

	/obj/machinery/door/firedoor/heavy
		name = "Heavy Emergency Shutter"
		desc = "Emergency air-tight shutter, capable of sealing off breached areas."
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/firedoor.dmi'

	/obj/machinery/firealarm
		icon = 'ModularTegustation/Teguicons/skyrat_cool_walls/firealarm.dmi'
		alarm_sound = 'ModularTegustation/Tegusounds/tegu_cool_airlocks/skyrat_airlock_sounds/alarm_fire.ogg'
		cooldownlength = 80

/turf/closed/wall/rust/New(loc, ...)
	. = ..()
	if(map_config/artstyle == "skyrat")
		var/mutable_appearance/rust = mutable_appearance(icon, "rust")
		add_overlay(rust)

/obj/machinery/door/firedoor/open()
	if(map_config/artstyle. == "skyrat")
		playsound(loc, door_open_sound, 90, TRUE)
		. = ..()

/obj/machinery/door/firedoor/close()
	if(map_config/artstyle == "skyrat")
		playsound(loc, door_close_sound, 90, TRUE)
		. = ..()
*/
