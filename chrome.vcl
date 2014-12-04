include test_include.vch;
# Voice commands for chrome

## My Functions Defined
Focus():={CTRL+l}~{Enter};		#chrome settings>manage search engines>add one called "~" URL "javascript:"

Close window =stop being stupid;

#Glee box
#glee <_anything> = {`}{left}$1;
glee <_anything> = {`}{left}$1 Wait(500) {Backspace}; #testing 
<item>:= (button = b | image = img | text | next | choose = '');
Scraper <item> = {`}{?}$1;
Command Glee <_anything> = {`}{!}$1;


# Browser
close tab = {ctrl + w}; 
New tab = {ctrl + t};
Tab 1..8 = {ctrl+$1}; 
address ={CTRL+l};
View source = {CTRL+ u};
Wrench={alt+ f};
Bookmark={CTRL+shift+d}; #see more bookmark/toolbar stuff later
Task manager={shift+esc};
Focus=Focus();

Zoom (out=- | in=+) = {CTRL+$1}; 
alt shift T = {alt +SHIFT+T};


# Page Navigation
page = {pgdn};
down = {pgdn};
Shift tab = {SHIFT+TAB};


#website specifics
Add to cart = {`} "add to cart";

	