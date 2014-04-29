clc
clear
original = 'This is my top secret message!';
eVec = randperm(length(original));
encoded ='';
len = length(original);
for i = 1:len
    encoded(i) = original(eVec(i));
end
lin = 1:len;
tempVec = [eVec',lin'];
t2 = sortrows(tempVec);
dVec = t2(:,2);
decoded = '';
for j = 1:len
    decoded(j) = encoded(dVec(j));
end
%show result
disp(['Original:',original])
disp(['Encoded:',encoded])
disp(['Decoded:',decoded])
%msg = {'Original:' , original ; 'Encoded:' , encoded ; 'Decoded:' ,  decoded };
%disp(msg) 
%the above method never work, I get  [1x30 char] for the output of original
correct = strcmp(original,decoded)
disp(['Decoded correctly (1 true, 0 false): ', num2str(correct)] )