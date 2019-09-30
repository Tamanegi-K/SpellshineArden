///Usage: bouncekihu(obj)
goddamnspiderman = argument0

if (place_meeting(x + speed, y, goddamnspiderman)) or (place_meeting(x - speed, y, goddamnspiderman))
    {NewDir = 2 * 90 - 180 - direction}
    
else if (place_meeting(x, y + speed, goddamnspiderman)) or (place_meeting(x, y - speed, goddamnspiderman))
    {NewDir = 2 * 180 - 180 - direction}
    
direction = NewDir

//Credit: Kihunter
