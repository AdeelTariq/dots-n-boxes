var line = argument0;
var dir = argument1;
if string_length(line)==2{
    var char = string_char_at(line,1);
    var number = real(string_char_at(line,2));
}
else if string_length(line)==3{
    if real(string_char_at(line,2))==0{
        var char = string_char_at(line,1) + string_char_at(line,2);
        var number = real(string_char_at(line,3));
    }else{
        var char = string_char_at(line,1);
        var number = real(string_char_at(line,2) + string_char_at(line,3));
    }
}else if string_length(line)==4{
    var char = string_char_at(line,1) + string_char_at(line,2);
    var number = real(string_char_at(line,3) + string_char_at(line,4));
} 
var lines;
lines[0] = line;
if dir=='up'{
    if !(ord(char)==ord('a')){
        lines[0] = CHAR_MAP[getIndex(char)-1]+string(number+1);
        lines[1] = CHAR_MAP[getIndex(char)-2]+string(number);
        lines[2] = CHAR_MAP[getIndex(char)-1]+string(number);
    }
}else if dir=='down'{
    if char!=CHAR_MAP[GRID_HEIGHT*2]{
        lines[0] = CHAR_MAP[getIndex(char)+1]+string(number);
        lines[1] = CHAR_MAP[getIndex(char)+2]+string(number);
        lines[2] = CHAR_MAP[getIndex(char)+1]+string(number+1);
    }
}else if dir=='left'{
    if !(number==0){
        lines[0] = CHAR_MAP[getIndex(char)-1]+string(number-1);
        lines[1] = char+string(number-1);
        lines[2] = CHAR_MAP[getIndex(char)+1]+string(number-1);
    }
}else if dir=='right'{
    if (number!=GRID_WIDTH){
        lines[0] = CHAR_MAP[getIndex(char)+1]+string(number);
        lines[1] = char+string(number+1);
        lines[2] = CHAR_MAP[getIndex(char)-1]+string(number);
    }
}
return lines
