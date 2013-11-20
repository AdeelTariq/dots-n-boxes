var line = argument0;
var dir = argument1;
var char = string_char_at(line,1);
var number = real(string_char_at(line,2));
var lines;
lines[0] = line;
if dir=='up'{
    if !(ord(char)==ord('a')){
        lines[0] = chr(ord(char)-1)+string(number+1);
        lines[1] = chr(ord(char)-2)+string(number);
        lines[2] = chr(ord(char)-1)+string(number);
    }
}else if dir=='down'{
    if !(ord(char)==ord(ds_map_find_value(CHAR_MAP,string(GRID_HEIGHT+1)))){
        lines[0] = chr(ord(char)+1)+string(number);
        lines[1] = chr(ord(char)+2)+string(number);
        lines[2] = chr(ord(char)+1)+string(number+1);
    }
}else if dir=='left'{
    if !(number==0){
        lines[0] = chr(ord(char)-1)+string(number-1);
        lines[1] = chr(ord(char))+string(number-1);
        lines[2] = chr(ord(char)+1)+string(number-1);
    }
}else if dir=='right'{
    if !(number==GRID_WIDTH+1){
        lines[0] = chr(ord(char)+1)+string(number);
        lines[1] = chr(ord(char))+string(number+1);
        lines[2] = chr(ord(char)-1)+string(number);
    }
}
return lines
