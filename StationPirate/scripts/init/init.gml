#region particles types

//dash particle
var p=part_type_create()
part_type_shape(p,pt_shape_pixel)
part_type_life(p,20,30)
part_type_alpha2(p,0.5,0.1)
part_type_size(p,3,3,0,0)
part_type_direction(p,0,360,0,25)
part_type_speed(p,2,3,0,0)
part_type_color_mix(p,$ffff00,$ff8700)

global.ptDashTrail=p

//blood particle
p=part_type_create()
part_type_shape(p,pt_shape_pixel)
part_type_life(p,7,12)
part_type_alpha2(0,1,0.5)
part_type_size(p,3,3,-0.2,0)
part_type_direction(p,0,360,0,0)
part_type_speed(p,4,5,0,0)
part_type_color_mix(p,$00007c,$1a1aff)

global.ptBlood=p

//kill particles
#macro DEAD_PARTICLES_AMMOUNT 50
p=part_type_create()
part_type_shape(p,pt_shape_pixel)
part_type_life(p,300,500)
part_type_alpha2(p,1,1)
part_type_size(p,8,10,-0.3,0)
part_type_direction(p,0,360,0,5)
part_type_speed(p,5,6,0,0)
part_type_color_mix(p,$00007c,$1a1aff)

global.ptDead=p

#endregion

#region arm positions

global.arm_pos_walking=
{
	l: 130,
	r: 50
}

global.arm_pos_handgun=
{
	l: 100,
	r: 85
}

global.arm_pos_rifle=
{
	l: 65,
	r: 345
}

#endregion

#region sound priority

#macro shootPriority 10
#macro reloadPriority 8
#macro hitPriority 20
#macro dashPriority 15
#macro pickupPriority 0
#macro playerDeadPriority 100
#macro enemyDeadPriority 50

#endregion

#region extra macros

#macro pickupRange 64
#macro plr  obj_player
#macro WALK_SPD 6
#macro MAX_DASH_COOLDOWN 25
#macro DASH_FRAMES 10
#macro DASH_SPD 12
#macro TILE_SIZE 32

#endregion

#region scribble

//scribble_font_add_all()

#endregion