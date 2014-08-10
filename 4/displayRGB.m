%{
7.	 Image processing. Write a function to display a color image, as well as its red, green, and blue 
layers  separately.  The  function  declaration  should  be  im=displayRGB(filename). 
filename should be the name of the image (make the function work for *.jpg images only). 
im should be the final image returned as a matrix. To test the function, you should put a jpg file 
into the same directory as the function and run it with the filename (include the extension, for 
example  im=displayRGB(¡®testImage.jpg¡¯)).  You  can  use  any  picture  you  like,  from 
your  files  or off  the  internet.  Useful  functions:  imread,  meshgrid,  interp2,  uint8,  image,  axis 
equal, axis tight. 
a.	 To make the program work efficiently with all image sizes, first interpolate each color 
layer of the original image so that the larger dimension ends up with 800 pixels. The 
smaller dimension should be appropriately scaled so that the length:width ratio stays 
the same. Use interp2 with cubic interpolation to resample the image. 
b.	 Create a composite image that is 2 times as tall as the original, and 2 times as wide. 
Place the original image in the top left, the red layer in the top right, the green layer in 
the bottom left, and the blue layer in the bottom right parts of this composite image. 
The function should return the composite image matrix in case you want to save it as a 
jpg again (before displaying or returning, convert the values to unsigned 8-bit integers 
using uint8). Hint: To get just a single color layer, all you have to do is set the other two 
layers  to  zero.  For  example  if  X  is  an  MxNx3  image,  then  X(:,:,2)=0; 
X(:,:,3)=0; will retain just the red layer. Include your code and the final image in 
your homework writeup. It should look something like this: 
%}
function im=displayRGB(filename)
%filename = 'l.jpg';
myimage  = imread(filename);
[l,w,t] = size(myimage);
if l>w
    nl = 800;
    nw = nl*w/l;
else
    nw = 800;
    nl = nw * l/w;
end
[X,Y] = meshgrid(1:w,1:l);
[XI,YI] = meshgrid(1:nw,1:nl);
ZI = zeros(nl,nw,3);

ZI(:,:,1) = interp2(X,Y,myimage(:,:,1),XI,YI,'cubic');
ZI(:,:,2) = interp2(X,Y,myimage(:,:,2),XI,YI,'cubic');
ZI(:,:,3) = interp2(X,Y,myimage(:,:,3),XI,YI,'cubic');

sI = double(ZI)/255;
sR = ZI; sG = ZI; sB = ZI;
sR(:,:,2) = 0; sR(:,:,3) = 0; 
sG(:,:,1) = 0; sG(:,:,3) = 0;
sB(:,:,1) = 0; sB(:,:,2) = 0;

%image(sI)
%image(uint8(sR))
%how to get the right display is a mystery my working method is to do a
%convertion and uint8
newimage = zeros(2*nl,2*nw,3);
newimage(1:nl,1:nw,:) = ZI;
newimage(1:nl,nw+1:2*nw,:) = sR;
newimage(nl+1:2*nl,1:nw,:) = sG;
newimage(nl+1:2*nl,nw+1:2*nw,:) = sB;
image(uint8(newimage))