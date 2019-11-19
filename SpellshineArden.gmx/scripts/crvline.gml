///Usage: crvline(rate, changes, type, initcurve, newcurve, newcurve2)

var    time = argument0; //time to reach direction
var  change = argument1; //number of times to change direction changes
var    type = argument2; //curvecurve: 0 - instant, 1 - constant
var initdir = argument3; //initial direction
var  newdir = argument4; //dierction increment per frame
var xtradir = argument5; //direction increment per frame after newdir (NOTE: If change = 0, this variable will be ignored)
//cont = continue own direction, aimp = aim player, revr = reverse direction

if !is_real(time)
    {curvelines[0] = 0}
else
    {curvelines[0] = time}
    
if !is_real(change)
    {curvelines[1] = 0}
else
    {curvelines[1] = change}
    
if !is_real(type)
    {curvelines[2] = 0}
else
    {
    if type > 1
        {curvelines[2] = 0}
    else
        {curvelines[2] = type}
    }    

if !is_real(initdir)
    {curvelines[3] = 0}
else
    {curvelines[3] = initdir}
    
if (newdir ==  "cont") or (newdir == "aimp") or (newdir == "revr")
    {curvelines[4] = newdir}
else if !is_real(newdir)
    {curvelines[4] = 0}
else
    {curvelines[4] = newdir}

if (xtradir ==  "cont") or (xtradir == "aimp") or (xtradir == "revr")
    {curvelines[5] = xtradir}    
else if !is_real(xtradir)
    {curvelines[5] = 0}
else
    {curvelines[5] = xtradir}

return curvelines
