///Usage: spdline(rate, changes, type, initspeed, newspeed, newspeed2)

var    time = argument0; //time to reach speed
var  change = argument1; //number of times to change speed up/downs
var    type = argument2; //speedcurve: 0 - instant, 1 - constant, 2 - lerp
var initspd = argument3; //initial speed
var  newspd = argument4; //speed to reach
var xtraspd = argument5; //speed to reach after newspeed (NOTE: If change = 0, this variable will be ignored)

if !is_real(time)
    {speedlines[0] = 0}
else
    {speedlines[0] = time}
    
if !is_real(change)
    {speedlines[1] = 0}
else
    {speedlines[1] = change}
    
if !is_real(type)
    {speedlines[2] = 0}
else
    {
    if type > 2
        {speedlines[2] = 0}
    else
        {speedlines[2] = type}
    } 

if !is_real(initspd)
    {speedlines[3] = 0}
else
    {speedlines[3] = initspd}
    
if !is_real(newspd)
    {speedlines[4] = 0}
else
    {speedlines[4] = newspd}
    
if !is_real(xtraspd)
    {speedlines[5] = 0}
else
    {speedlines[5] = xtraspd}

return speedlines
