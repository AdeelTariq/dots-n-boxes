var name = argument0;
var dir = argument1;
var num = isBoxComplete(name,dir);
if num==3{
var list = getLineList(name,dir);
list[3] = name;
var xx = 0;
var yy = 0;
for(var i = 0;i < array_length_1d(list);i++;){
        var line = ds_map_find_value(LINES_MAP,list[i]);
        if (line.drawn==true)
        {
        xx += line.x;
        yy += line.y;
        }
    }
    xx /= 4;
    yy /= 4;
    xx-=21;
    yy-=21;
    if is_array(BOXES){
    n = array_height_2d(BOXES);
    BOXES[n,0] = "A";
    BOXES[n,1] = xx;
    BOXES[n,2] = yy;
    }else{
    BOXES[0,0] = "A";
    BOXES[0,1] = xx;
    BOXES[0,2] = yy;
    }
}
else if num==2{
    //var list = getLineList(name,dir);
    //for(var i = 0;i < array_length_1d(list);i++;){
        //var line = ds_map_find_value(LINES_MAP,list[i]);
        //if (line.drawn==false)
        //{
        //line.drawn = true;
        //line.image_index = 2;
        //}
    //}
}



