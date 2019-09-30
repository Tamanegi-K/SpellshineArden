///Usage: bounceoffball(obj)
var xvel = cos(direction / 180 * pi);
var yvel = sin(direction / 180 * pi);

     if place_meeting(x + (xvel * sprite_width), y, argument0) xvel *= -1;
else if place_meeting(x - (xvel * sprite_width), y, argument0) xvel *= -1;
else if place_meeting(x, y + (yvel * sprite_height), argument0) yvel *= -1;
else if place_meeting(x, y - (yvel * sprite_height), argument0) yvel *= -1;

direction = arctan2(yvel, xvel) * 180 / pi;

//Credit: BearishMushroom senpai
