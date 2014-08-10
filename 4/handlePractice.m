%{
6 Handles
a.  Do all the following in a script named handlesPractice.m 
b.  First, make a variable x that goes from 0 to  2
¦Ð 
, and then make y=sin(x). 
c.  Make a new figure and do plot(x,y,¡¯r¡¯) 
d.  Set the x limit to go from 0 to  2
¦Ð 
(xlim) 
e.  Set  the  xtick property  of  the  axis  to  be  just  the  values  [0  pi  2*pi],  and  set 
xticklabel to be {¡®0¡¯,¡¯1¡¯,¡¯2¡¯}. Use set and gca 
f.  Set the ytick property of the axis to be just the values -1:.5:1. Use set and gca 
g.  Turn on the grid by doing grid on. 
h.  Set the ycolor property of the axis to green, the xcolor property to cyan, and the 
color property to black (use set and gca) 
i.  Set the color property of the figure to a dark gray (I used [.3 .3 .3]). Use set and gcf 
j.  Add a title that says ¡®One sine wave from 0 to 2¦Ð¡¯ with fontsize 14, fontweight 
bold, and color white. Hint: to get the ¦Ð to display properly, use \pi in your string. 
Matlab uses a Tex or Latex interpreter in xlabel, ylabel, and title. You can do all this just 
by using title, no need for handles. 
k.  Add the appropriate x and y labels (make sure the ¦Ð shows up that way in the x label) 
using a fontsize of 12 and color cyan for x and green for y. Use xlabel and ylabel 
l.  Before you copy the figure to paste it into word, look at copy options (in the figure¡¯s Edit 
menu) and under ¡®figure background color¡¯ select ¡®use figure color¡¯. 
%}
close all; 
clear;
clc;
x = 0:pi/20:2*pi;
y = sin(x);
figure
plot(x,y,'r')
xlim([0,2*pi]);
myaxis = gca;
set(myaxis,'xtick',[0  pi  2*pi],'xticklabel', {'0','1','2'})
set(myaxis,'ytick',-1:.5:1)
grid on
set(myaxis,'ycolor','g','xcolor','c','color','k')
myfigure = gcf;
set(myfigure,'color',[.3,.3,.3])
title('One sine wave from 0 to 2 \pi','fontsize',14,'fontweight','bold','color','w')
xlabel('X values (interms of \pi)','fontsize',12,'color','c')
ylabel('Sin(x)','fontsize',12,'color','g')







