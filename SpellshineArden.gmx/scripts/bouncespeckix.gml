///Usage: bouncer(obj)
obujectu = argument0

// obj_ball collision event with obj_Wall
if (place_meeting(x, y + vspeed, obujectu)) {
    direction = -direction;
    hspeed *= -1;
    vspeed *= -1;

    /*if x > obujectu.x
        {x -= 1.01}
    else
        {x += 1.01}*/
}

if (place_meeting(x + hspeed, y, obujectu)) { 
    direction = 180 - direction;
    hspeed *= 1;
    vspeed *= -1;
    
    /*if y > obujectu.y
        {y -= 1.01}
    else
        {y += 1.01}*/
}

//Credit: Speckix on reddit
//Additional help from Bagoum#4773 on Discord @ Bullet Hell Engines 
