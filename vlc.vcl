# Voice commands for vlc

Advanced controls={CTRL+ A};

Speed up 1..10 = {"]"_$1};
Slow down 1..10 = {"["_$1};
Jump right 1..10 = Repeat($1, .);

jump left [1..10] = Repeat(When($1,$1,1),{","});


#Vocola: Go Up 1..9 = Repeat($1, ..\) {Enter};
#Say: Go Up 3  Sent: ..\..\..\{Enter}

##Jump left 1..10 = When($1,{","_$1}[,{","}]);##why