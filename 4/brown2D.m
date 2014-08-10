%{
8 Animation: Brownian motion. 
Write a function with the following declaration: brown2D(N). The function 
takes in a single input N, which is an integer specifying the number of 
points in the simulation. All the points should initially start at the 
origin (0,0). Plot all the points on a figure using ¡®.¡¯ markers, and set 
the axis to be square and have limits from -1 to 1 in both the x and y 
direction.  To  simulate  Brownian  motion  of  the  points,  write  a  
1000-iteration  loop  which  will calculate  a  new  x  and  y  position  
for  each  point  and  will  display  these  new  positions  as  an 
animation. The new position of each point is obtained by adding a normally 
distributed random variable with a standard deviation of 0.005 to each x 
and y value (use randn; if you have 100 points, you need to add 100 
distinct random  values to the x values and 100 distinct random values to 
the y values). Each time that the new positions of all the points are 
calculated, plot them on the figure and pause for 0.01 seconds (it¡¯s best 
to use set and the line object handle in order to update the xdata and 
ydata properties of the points, as mentioned in lecture). What you will see
 is a simulation of diffusion, wherein the particles randomly move away 
from the center of the figure. 
%}
function brown2D(N)
x = zeros(N,1);
y = zeros(N,1);
h = plot(x,y,'.');
for k =2:1000
    x = .005*randn(N,1);
    y = .005*randn(N,1);
    set(h,'xdata',x,'ydata',y);
    pause(0.01)

end