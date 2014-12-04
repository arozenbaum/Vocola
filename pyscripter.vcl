include test_include.vch;
include utilities_jaywhy.vch;
include Unimacro.vch;
# Voice commands for pyscripter

# words
define = def;
define <_anything> = 'def '$1 '():';
# <_anything> equals <_ anything> = $1$2;
blank parens = {shift+9}{shift+0};
un dont ={CTRL+ shift+ Z};


erase line= HeardWord(delete, line) {backspace};
Indent line = HeardWord(select, line){shift+CTRL+ I};
dedent={shift+CTRL+u};
Dedent line = HeardWord(select, line){shift+CTRL+ U};

run code = {CTRL+F9};
page = {pgdn};
Line 1..200	= {alt + g} $1	{enter};

#------------------------------------------------ from notepad++ fileS-------


<wordnav> :=  (next=right | last=left );
<wordnav> chunk = {Ctrl+$1};

#next chunk = {Ctrl+right};
chunk 0..199 = {Home} Repeat(Eval($1-1),{Ctrl+right});

minus = "-";
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


space less <_anything> = $1; 

Save that = {CTRL + S};
Save file = {alt+F} {S};
Save by system = SendSystemKeys({CTRL + S});


(shit | oops | fuck) undo = {Alt+E}{U}; 
#-----------------------------------------------------------------------------------------------