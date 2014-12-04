include test_include.vch;
include utilities_jaywhy.vch;

#– – – – unimacro – – – – –
include Unimacro.vch;

#----------tests---------


<wordnav> :=  (next=right | last=left );
<wordnav> chunk = {Ctrl+$1};
chunk 0..199 = {Home} Repeat(Eval($1-1),{Ctrl+right});

zip test = catwater();

double(food) := EvalTemplate('sum([%i,%i])', $food, $food);
Len(string) := EvalTemplate('len(%s)', $string);
tunatuna(x) :=  Len($x) also nice double(44); 
python evaluation test = tunatuna("gf");

#--------------------------

# Voice commands for notepad++

braces = {}{Left};
empty parens = {shift+9}{shift+0}{left};

space less <_anything> = $1; 

Save that = {CTRL + S};
Save file = {alt+F} {S};
Save by system = SendSystemKeys({CTRL + S});


(shit | oops | fuck) undo = {Alt+E}{U}; 

Line 1..99		= {CTRL + g} $1	{enter};
#Line 100[0..9 [0..9 [0..9]]]= {CTRL + g} $1$2$3 {enter};

##HOLY BALLS AT LAST, TABS
Tab 0..9 = {alt+ W} $1;
Other Tab = {f8};

control = CTRL;

semi = ";";
Equals = "=";
plus = "+"; 			#{shift+=};
Lace= {shift+"["};
race= {shift+"]"};
lan= {shift+9};
ran= {shift+0};
lacket= "[";
racket= "]";
(quote | dote) ='"';
sote="'";
bar="|";
bang={!};
hash=SendKeys({shift+3});
cash={shift+4};
langle={shift+","};
rangle={shift+"."};
minus = "-";


#semi = ";";
#Equals = "=";
#plus = "+";
#Lace= "{";
#race= "}";
#lan= "(";
#ran= ")";
#lacket= "[";
#racket= "]";
#quote='"';
#bar="|";

horizontal rule = ------------------------------------------------;


commentFunction(number) := Repeat($number,{Home}{Shift+3}{Down}){Up};
uncommentFunction(number) := Repeat($number,{home}{Del}{down}){Up};
#comment line  = {Home}{Shift+3};
#comment 0..99 lines = Repeat($1,{Home}{Shift+3}{Down});
comment this = commentFunction(1);
comment [0..99] lines= commentFunction($1);
remove comment this = uncommentFunction(1);
remove comment [0..99] lines= uncommentFunction($1);

### if python language model 
 comment = {CTRL+Q};


Proper={Ctrl+Alt+Shift+Up}; 
shrink = {Ctrl+Alt+Shift+U};
first letter = {Ctrl+Left}{Shift+Right};
Camel 0..99 = Repeat($1,{Ctrl+ shift+Left}) {Ctrl+Alt+Shift+Up}
			{Ctrl+Alt+Shift+Down}{Left}{Shift+Right}{Ctrl+Alt+Shift+U}{Ctrl+Right};
	

Obsolete Camel [Case] That = HeardWord(Cap,That) HeardWord(compound,that) {Ctrl+Left}
                    {Shift+Right} {Ctrl+U}{Ctrl+Right};
#(Cap | Up Case) <n> = {Shift+Right_$2} HeardWord(\All-Caps,That);



#Another Camel Case = HeardWord(select, that) {Ctrl+Alt+Shift+Up}
			#{Ctrl+Alt+Shift+Down}{Ctrl+Left}{Shift+Right}{Ctrl+Alt+Shift+U}{Ctrl+Right};
 
  
# Page Navigation
page = {pgdn};
down = {pgdn};
Shift tab = {SHIFT+TAB};