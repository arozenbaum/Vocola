


$set MaximumCommands 5;

view <_anything> = "look at $1" {Enter};

<_anything> now = $1 {Enter};
think <_anything> = "think about $1" {Enter};
grab <_anything> = "get $1" {Enter};
(Read | Remember)  <_anything> = " $1 $2" {Enter};
walk (East| West| North|South| up| down)=" go $1"{enter};
( Directions | look| jump)= $1 {enter}; 
crack <_anything> = "open $1" {Enter};

watermelon = "open contraption" {enter};
teapot contraptiony=  "pour water from teapot into contraption"{enter};
teapot well = "Get water from well with teapot"{enter};

Phil = {TAB};

milm = Inventory{enter};

#“She was the gopest gheliper I’ve ever rebbed, and dass, too. She just 
#gombed the delcot, pobbed those glauds at the doshery, and pelled 
#fosken.”


##verb
#rask = 'rask ';
#doatch = 'doatch at ';
#( pell | pob | rike | skobe | lello | tunk | reb | gask | zank | leil | doatch at |
# abvate | boltep | malk | durch | vorl |vold |statch) = '$1 ';
#
#reb = 'reb {Enter}';
#
###noun
#(glaud | Cobbic | roggler | jenth | juffet) = '$1 ';
#
#(droke | duscat | self | pilter | gitch | warb |darf | 
#milm | darftunder | gropple | reggler | chalm | shamtag | pogrifon
#|fesh | brangy | coyd | chender | pank | calbice | lonn | sindish | goaves | gheliper | dorl | henfifes | poskot )  = '$1 ';
# 
#(tarshen | whomm | palgic |suddy |footch |jenth |hosh | skebbic)  = '$1 ';
#
##places
#
##(Delcot | tondam | Morleon | samilen | gomway | stike | fostin | doshery )  = '$1 ';
#
#
#
##adj
#poltive = 'poltive ';
#(brimny|koldgeon | clarby | rorm | statched | shebtak) ='$1 ';  #coyds and their products #clarby riked = rorm tarshem but if other coys is riked, it tunds it with a calbice
#(rorm | scurm | stam) ='$1 ';
#
#
#
##direction
#
#(jirf | kirf | loff | hoff | jiloff | jihoff | kiloff| kihoff) = 'pell $1 {Enter} ';
#
#
##misc
#bal = 'bal ';
#da = 'da ';
# (gemmly | bommly) =  '$1 {Enter} ';
#about = 'about ';
#
#
## Voice commands for bocfel
#
###############