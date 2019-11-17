///Usage: bouncer(obj)
obujectu = argument0

// obj_ball collision event with obj_Wall
if (place_meeting(x, y + vspeed, obujectu)) {
    direction = -direction;
    hspeed *= -1;
    vspeed *= -1;
}

if (place_meeting(x + hspeed, y, obujectu)) { 
    direction = 180 - direction;
    hspeed *= 1;
    vspeed *= -1;
}

//Credit: Speckix on reddit
