# Global voice command
$set MaximumCommands 2;
# <letter> := ( zebra='z' | sassy='s');
# Suspended zebra = {Win+z} ;
shift entrée={shift + enter};
Menu = {Shift+F10};

next char = {Right};
char <n> = {Home}{Right_$1};

##silverware = {Ctrl+Alt+A};


###– – – – unimacro – – – – –
include Unimacro.vch; #errrmiiggerdd

nibble display mouse = Unimacro(<<displayone>>);
nibble start search = Unimacro(<<startsearch>>);
nibble copy = Unimacro(<<copy>>);

close tab = Unimacro({Ctrl+w});
open system tray = WINKEY(b);
you Delta=Unimacro("U Delta") ;
hold down mouse = Unimacro(MDOWN);
release mouse= Unimacro(ENDMOUSE);


#test spacing <_anything> = $1 . a; gg

nibble mouse position = PMP();

nibble key sequence = Unimacro("a;a;a;a"){Enter} SSK({s}{s}{s}{s}{Enter});

nibble speak out loud <_anything> = SPEAK($1);

nibble would you say <_anything> = Unimacro("YESNO do you want to proceed; SPEAK($1)");
 
##nibble recent file = Unimacro("<<<fileopenrecent>>>"); ???

#– – – autohotkey
autohotkey save = WINKEY(z);
autohotkey suspend = SendSystemKeys({Shift+Ctrl+Alt+S});
 
message box this ok test = AHK("MsgBox This ok.");

script <_anything> = AHK($1 . ahk);

#saggy = AHK(mmm.ahk); gg 
 
 
#--------------tests---------


#open watermelon = sbutterfly();

#include test_include.vch;
#james=butterfly();
food = blfoo;

<foo>:= bar | baz;
fat <foo> =  dumb $1;  

<junk> := notepad | peepad;

noon pad = ShellExecute(notepad);

same pad = ShellExecute(salmonella.ahk, 0, C:\Users\b\Desktop);
  
autohotkey box =  HeardWord(press, alt, Bar);
#-------------------

# – – – – – testing Dragon language – – –
beep twice = Beep() 
Wait(500) 
Beep();

#confirm this = MsgBoxConfirm("fasdf", 4, "Sdfddf") SendKeys({t}{t}); doesn't work because it doesn't terminate script

#Win Bee = SendSystemKeys({Win});
# – – – – – – – – – – – – – – – – –

# ---------------------------------------------------------------------------
# borrowed from other users:
(Expand={Alt+ExtDown} | Collapse={Alt+ExtUp}) That = SendSystemKeys($1);  #Expand and collapse drop-down list

### Straight mouse grid commands. (See documentation in utilities_jaywhy.vch)

include utilities_jaywhy.vch;


<n> := 0..99;
<n> <n> Go    = moveTo($2, $1);
#<n> <n> Move    = moveBy($2, $1);#mine
<n> <n> Touch =  touch($2, $1);
<n> <n> Drag  = dragTo($2, $1);
<n> <n> Paste =  touch($2, $1) {Ctrl+v};

<upDown>    := (  Up='-' |  Down='');
<leftRight> := (Left='-' | Right='');

#### broke on August 16 at 10 PM for no apparent reason V VV
# Drag <n> <upDown>    = dragBy(0, $2$1);
# Drag <n> <leftRight> = dragBy($2$1, 0);
# Drag <n> <leftRight> = dragBy($2$1, 0);
## Move and resize windows

# <edge> := (Top=n | Bottom=s | Left=w | Right=e);

# [Move] Window <n> <upDown>    = moveNearEdge(n,0,1) dragBy(0, $2$1);
# [Move] Window <n> <leftRight> = moveNearEdge(n,0,1) dragBy($2$1, 0);
# [Move] Window Northwest = moveNearEdge(nw,2,1) dragTo(2,1);
# [Move] Window Northeast = moveNearEdge(ne,-5,1) dragTo(95,1);

# [Size] Window <edge> <n> <upDown>    = moveToEdge($1) dragBy(0, $3$2);
# [Size] Window <edge> <n> <leftRight> = moveToEdge($1) dragBy($3$2, 0);

#Maximize Window = touchNearEdge(ne,-2,1);

Tile Windows     = tileWindows(0);
Tile Windows <n> = tileWindows($1);  # Edge is <n> units right of center


# ---------------------------------------------------------------------------


Potato bug = {browser_refresh}{T}{a}{B}{backspace}{space};
Cursor 1..9 [0..9 [0..9 [0..9]]] down 1..9 [0..9 [0..9 [0..9]]] = SetMousePosition (0, $1$2$3$4, $5$6$7$8); 
Window Cursor 1..9 [0..9 [0..9 [0..9]]] and 1..9 [0..9 [0..9 [0..9]]] = SetMousePosition (1, $1$2$3$4, $5$6$7$8); 
##Voice copy = SendSystemKeys({CTRL+C});
#Go Mouse 1..9 [0..9] down 1..9 [0..9] = SetMousePosition (0, $1$2, $3$4); 
#mouse right hop 1..9 = $1 SetMousePosition (2, Eval(20*$1), 0);
hop right 1..9 = SetMousePosition (2, Eval(20*$1), 0);
# Voice commands for clipx

hot clip= SendSystemKeys({CTRL+alt+shift+v});
primary paste = SendSystemKeys({CTRL+alt+shift+v}{Enter});
secondary paste  = SendSystemKeys({CTRL+alt+shift+p}{Enter});
#paste 0..9 = SendSystemKeys({CTRL+alt+shift+v}) Wait(500)$1;

### Keystrokes
tick = `;
Scape = {esc};
Entrée = {enter};
Back={BACKSPACE};
tick <_anything> = {`}{left}$1;
bang = !;

Quesh = '?'; Queshes ="`??";
1..99 Tab = {TAB_$1};

capslock = HeardWord(press, caps, lock);

### Uncategorized
switch to chrome = AppBringUp(chrome);
go chrome = AppBringUp(chrome);
go VLC = HeardWord(switch, to, VLC,  media, player);
go notepad = AppBringUp(notepad++);
Next tab = {CTRL+TAB};
Last tab = {CTRL+SHIFT+TAB};
1..99 Next tab = {CTRL+TAB_$1};
1..99 Last tab = {CTRL+SHIFT+TAB_$1};
test 1..99 law law law = SendSystemKeys({L}{L}{$1}{L}{L}{L}{Enter});

### Mouse
Rick=ButtonClick(2);
(lick | leftish | spoon)=ButtonClick(1);
click the mouse=ButtonClick(1);
0..9 mice = Repeat($1,ButtonClick(1));

### Cursor movement
<direction> := Left | Right | Up | Down;
1..99 <direction> = {$2_$1};  			  ##1..99 (left | right| down|up) = {$2_$1};



		 

#### Page navigation
Page 1..99 = {pgdn_$1};
Page up 1..99 = {pgup_$1};

find = {CTRL +f};
find Text <_anything> = {Ctrl+f} $1 {Enter};


### Windows

system tray = HeardWord(press, Windows, b){enter};
Context={shift+F10};

#Aero
Snap (right|left|down|up) = HeardWord(press, Windows, $1);




