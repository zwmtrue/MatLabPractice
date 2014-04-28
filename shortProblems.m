%All answers tested to work on MatLab R2013a
%1 Scalar variables
%The following create scalar variables required by #1
a = 10
b = 2.5e23
c = 2 + 3i
j=i;
d=exp(j*2*pi/3)

%2 Vector variables
aVec = [3.14 15 9 26]
bVec = [2.71 8 28 182]'
cVec = linspace(5,-5,101)
dVec = logspace(0,1,101)
eVec = 'Hello'

%3 Matrix variables 
aMat = ones(9)*2
%this could also be achieved by zeros(9)+2
v = [1 2 3 4 5 4 3 2 1];
bMat = zeros(9) + diag(v)
cMat = reshape(linspace(1,100),10,10)
dMat = nan(3,4)
eMat = [13 -1 5;-22 10 -87]
fMat =  floor(rand(5,3)*7-3)
% fMat can also be expressed as  ceil(rand(5,3)*7-4) 
%randi([-3,3],5,3) will be easier,but we are limited to
% rand and floor or ceil 

%4 Scalar equations
x = 1/(1+exp(-(a-15)/6))
y = (sqrt(a)+b^(1/21))^pi 
z = log(real((c+d)*(c-d))*sin(a*pi/3))/(c*conj(c))

%5 Vector equations
tv = 2*2.5^2;
xVec = 1/sqrt(pi*tv) .* exp(-cVec.^2/tv)
yVec = sqrt(aVec'.^2+bVec.^2)
zVec = log10(1./dVec)

%6 Matrix equations
xMat = (aVec*bVec)*aVec.^2
yMat = bVec*aVec
zMat = det(cMat)*(aMat*bMat)'

%7 Common functions and indexing
cSum = sum(cMat)
eMean = mean(eMat)
eMat(1,:)=[1 1 1]
cSub = cMat(2:9,2:9)
lin =  linspace(1,20,20)
lin=lin*(-1);
lin(1) = 1;
lin

r = rand(1,5)
ind = find(r < 0.5);
for i = 1:length(ind)
    r(ind(i)) =  0;
end
r