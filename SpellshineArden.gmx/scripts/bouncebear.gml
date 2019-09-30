///Usage: bounceoff(obj)
var xvel = cos(direction / 180 * pi);
var yvel = sin(direction / 180 * pi);

     if place_meeting(x + (xvel * speed), y, argument0) xvel *= -1;
else if place_meeting(x - (xvel * speed), y, argument0) xvel *= -1;
else if place_meeting(x, y + (yvel * speed), argument0) yvel *= -1;
else if place_meeting(x, y - (yvel * speed), argument0) yvel *= -1;

direcion = (arctan2(yvel, xvel) * 180 / pi)

//Credit: BearishMushroom senpai
