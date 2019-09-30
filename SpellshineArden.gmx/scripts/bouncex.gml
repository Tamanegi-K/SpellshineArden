///Usage: bouncex(obj)
obujectu = argument0

// obj_ball collision event with obj_wall/obj_ground 
if (place_meeting(x + hspeed, y, obujectu)) { 
    direction = 180-direction;
    hspeed *= 1;
    vspeed *= -1;
}
