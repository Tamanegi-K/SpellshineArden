///Usage: plsfuckingbounce(obj)
wallobj = argument0;
NewDir = direction;
 
if (place_meeting(x + hspeed, y, wallobj)) or (place_meeting(x - hspeed, y, wallobj)) {
    NewDir = direction + 90;
}
   
else if (place_meeting(x, y + vspeed, wallobj)) or (place_meeting(x, y - vspeed, wallobj)) {
    NewDir = direction + 90;
}

if (direction % 90 == 0) {
    NewDir += random_range(30,60);
}

x -= dcos(direction) * speed;
y -= dsin(direction) * speed;
direction = NewDir;

//Credit: WishMakers#0426 on Discord
