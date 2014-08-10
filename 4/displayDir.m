%{
Using  Structs.  Structs  are  useful  in  many  situations  when  dealing  with  diverse  data.  For 
example, get the contents of your current directory by typing a=dir; 
a.	 a is a struct array. What is its size? What are the names of the fields in a? 
b.	 write a loop to go through all the elements of a, and if the element is not a directory, 
display  the following sentence  ¡®File  filename contains  X  bytes¡¯, where filename is the 
name of the file and X is the number of bytes. 
c.	 Write a function called displayDir.m, which will display the sizes of the files in the 
current directory when run, as below: 
%}
function displayDir
clear;
clc;

a = dir;
[s,q] = size(a);
p = 1;
    while(p<=s)
        if a(p).isdir
        else
            disp(['File ',a(p).name, ' contains ', num2str(a(p).bytes) ,' bytes'])
        end
          p = p+1;
      end
end
