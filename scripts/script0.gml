line = argument0;
dir = argument1;
char = string_char_at(line,1);
number = real(string_char_at(line,2));
if dir=='up'{
lines[0] = chr(ord(char)-1)+string(number+1);
lines[1] = chr(ord(char)-2)+string(number);
lines[2] = chr(ord(char)-1)+string(number);
}else if dir=='down'{


}else if dir=='left'{


}else if dir=='right'{


}
show_debug_message(lines[0] + " " + lines[1] + " " + lines[2]);
