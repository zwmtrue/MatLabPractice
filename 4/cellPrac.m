%{
4.	 Practice with cells. Usually, cells are most useful for storing strings, because the length of each 
string can be unique. 
a.  Make a 3x3 cell where the first column contains the names: ¡®Joe¡¯, ¡¯Sarah¡¯, and ¡¯Pat¡¯, the 
second  column  contains  their  last  names:  ¡®Smith¡¯,  ¡®Brown¡¯,  ¡®Jackson¡¯,  and  the  third 
column contains their salaries: $30,000, $150,000, and $120,000. Display the cell using 
disp. 
b.  Sarah gets married and changes her last name to ¡®Meyers¡¯. Make this change in the cell 
you made in a. Display the cell using disp. 
c.  Pat gets promoted and gets a raise of $50,000. Change his salary by adding this amount 
to his current salary. Display the cell using disp. 
%}
clc
clear
boo = {'Joe','Smith',30000;'Sarah','Brown',150000;'Pat','Jackson',120000};
disp(boo)
boo{2,2} = 'Meyers';
disp(boo)
boo{3,3} = boo{3,3}+50000;
disp(boo)