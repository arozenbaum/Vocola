# Voice commands for clipx


pick 0..9 = $1;
pick 10..99 = {down_$1}{up} ;
[down] 0..99 [lines] = {tab}{down_$1} ;
search = S;
#use 0..9 = meow($1, down);


##moveDown([Up|Down]}, number) := When($1,Repeat($number,{$directions}), Repeat($number, Down));
##rat balls = moveCursor(Up, 5);
##1..99 (left | right| down|up) = moveCursor($2, $1);
#
#<Durkr>:=( {Up}| {Down});
#

#
