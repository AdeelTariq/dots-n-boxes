var name = argument0;
var dir = argument1;

var list = getLineList(name,dir);
var total_drawn = 0;
for(var i = 0;i < array_length_1d(list);i++;){
    line = ds_map_find_value(LINES_MAP,list[i]);
    if (line.drawn==true)
    { total_drawn += 1; }
}

return total_drawn;
