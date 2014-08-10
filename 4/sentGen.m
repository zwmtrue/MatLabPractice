%Sentence Generator
sent = {'Tom','nice';'Mary','cool';'Jim','cute'};
a=randi(3,[2,1])
disp([sent{a(1),1}, ' is ', sent{a(2),2}, ' .'])