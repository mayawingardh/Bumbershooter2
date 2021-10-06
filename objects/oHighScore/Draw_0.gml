draw_text(x,y,"Final Score: " + string(global.points));
if (global.points > global.final)
{
global.final = global.points;
draw_text(x,y-40,"High Score: " + string(last));
}
else
{
draw_text(x,y-40,"High Score: " + string(last));
}

