///Usage: fire(x, y, type, colour, depth, angle, speed, bounce, traveltype, lifetime, deathaction)

var          xx = argument0; //x coordinate
var          yy = argument1; //y coordinate
var        type = argument2; //bullet shape/type
var      colour = argument3; //bullet colour (0 to 13, ROYLGTCBIPMFBW, RYGCIMBW)
var      ddepth = argument4; //bullet depth (appears on other bullets if higher)
var       angle = argument5; //bullet direction
var         spd = argument6; //bullet speed (maybe change to topspeed/minspeed?)
var      bounce = argument7; //no. of bounces  on wall
var      travel = argument8; //bullet travel type
var    lifetime = argument9; //bullet life before destroying itself without touching border (in frames, 0 for infinite)
var deathaction = argument10; //bullet's action after death

/* Travel Types                    |  Death Action
0 - constant speed                 | 0 - nothing
1 - decelerates                    | 1 - ???
2 - accelerates                    | 2 - ???
3 - decelerates then accelerates   | 3 - ???
4 - accelerates then accelerates   | 4 - ???
*/

//Note: Be sure to update obj_EnemyFire too

Thing = instance_create(xx, yy, obj_EnemyFire)
Thing.sprite_index = asset_get_index("spr_" + type)
Thing.image_index = colour
Thing.direction = angle
Thing.speed = spd
Thing.Bounces = bounce
Thing.DepthPriority = ddepth

//todo - travel, lifetime, deathaction

