///Usage: fire(x, y, type, colour, depth, angle, speed, bounce, lifetime, deathaction)

var          xx = argument0; //x coordinate
var          yy = argument1; //y coordinate
var        type = argument2; //bullet shape/type
var      colour = argument3; //bullet colour (0 to 13, ROYLGTCBIPMFBW, RYGCIMBW)
var      ddepth = argument4; //bullet depth (appears on other bullets if higher)
var       angle = argument5; //bullet direction
var         spd = argument6; //bullet speed (maybe change to topspeed/minspeed?)
var      bounce = argument7; //no. of bounces on wall
var    lifetime = argument8; //bullet life before destroying itself without touching border (in frames, -1 for infinite)
var deathaction = argument9; //bullet's action after death

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


if type == "titan"
    {
    Thing.image_speed = 0.2
    Thing.ColourLimit = (8 * (colour + 1)) - 1
    Thing.image_index = Thing.ColourLimit - 7
    }
else
    {
    Thing.image_index = colour
    Thing.image_speed = 0
    }

    
Thing.direction = angle


/*Thing.Curve = dcurve
if rotation <= 0
    {rotation = 1}
Thing.CurveTimer = (360 / abs(dcurve)) * rotation
if !is_real(Thing.CurveTimer)
    {Thing.CurveTimer = 0}  */

if is_array(angle)
    {
    Thing.ExtraCurveSettings = true
    Thing.CurveTime = angle[0]
    Thing.CurveStep = angle[0]
    Thing.CurveLoop = angle[1]
    Thing.CurveType = angle[2]
    
    Thing.direction = angle[3]
    Thing.CurveNew = angle[4]
    Thing.CurveAppend = angle[5]
    Thing.CurveGoal = angle[4]
    Thing.CurveBefore = angle[3]
    }
else
    {
    Thing.ExtraCurveSettings = false
    Thing.CurveInit = angle
    }

    
if is_array(spd)
    {
    Thing.ExtraSpeedSettings = true
    Thing.SpeedTime = spd[0]
    Thing.SpeedStep = spd[0]
    Thing.SpeedLoop = spd[1]
    Thing.SpeedType = spd[2]
    
    Thing.speed = spd[3]
    Thing.SpeedNew = spd[4]
    Thing.SpeedAppend = spd[5]
    Thing.SpeedGoal = spd[4]
    Thing.SpeedBefore = spd[3]
    }
else
    {
    Thing.ExtraSpeedSettings = false
    Thing.SpeedInit = spd
    }
    
    
Thing.Bounces = bounce
Thing.DepthPriority = ddepth

//todo - travel, lifetime, deathaction
//mental note: make alive state for boss and player instead of fuckin image_alpha my god

