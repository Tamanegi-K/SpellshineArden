///aim_player(x, y), aims towards the player
DisX = argument0
DisY = argument1

if instance_exists(obj_Gamer)
    {return point_direction(DisX, DisY, obj_Gamer.x, obj_Gamer.y)}
else
    {return 270}
