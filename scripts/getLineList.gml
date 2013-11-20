line = argument0;
dir = argument1;
char = string_char_at(line,1);
number = real(string_char_at(line,2));
if dir=='up'{
    if not char=='a'{
        lines[0] = chr(ord(char)-1)+string(number+1);
        lines[1] = chr(ord(char)-2)+string(number);
        lines[2] = chr(ord(char)-1)+string(number);
    }
}else if dir=='down'{
    if not char==CHAR_LIST[GRID_HEIGHT+1]{
        lines[0] = chr(ord(char)+1)+string(number);
        lines[1] = chr(ord(char)+2)+string(number);
        lines[2] = chr(ord(char)+1)+string(number+1);
    }
}else if dir=='left'{
    if not number==0{
        lines[0] = chr(ord(char)-1)+string(number-1);
        lines[1] = chr(ord(char))+string(number-1);
        lines[2] = chr(ord(char)+1)+string(number-1);
    }
}else if dir=='right'{
    if not number==GRID_WIDTH+1{
        lines[0] = chr(ord(char)+1)+string(number);
        lines[1] = chr(ord(char))+string(number+1);
        lines[2] = chr(ord(char)-1)+string(number);
    }
}
return lines
