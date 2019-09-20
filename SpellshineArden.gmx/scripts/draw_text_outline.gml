#define draw_text_outline
///How to use -> "draw_text_outline(x, y, text, textColor, outlineSize, outlineColor);"

var xx = argument0;
var yy = argument1;
var text = argument2;
var tcolor = argument3;
var osize  = real(argument4);
var ocolor = argument5;
 
var pcolor = draw_get_color();
 
draw_set_color(ocolor);
draw_text(xx - osize, yy, text);
draw_text(xx + osize, yy, text);
draw_text(xx, yy - osize, text);
draw_text(xx, yy + osize, text);
 
draw_set_color(tcolor);
draw_text(xx, yy, text);


#define script1
