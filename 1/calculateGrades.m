clc
clear
load('classGrades.mat')
grades =namesAndGrades(:,2:size(namesAndGrades,2));
meanGrades = nanmean(grades);
meanMatrix = ones(15,1)*meanGrades;
curvedGrades = 3.5*(grades./meanMatrix);
nanmean(curvedGrades)
ind = find(curvedGrades>5);
for i = 1:size(ind)
    curvedGrades(ind(i)) = 5;
end
totalGrade = ceil(nanmean(curvedGrades,2));
letters = 'FDCBA';
letterGrades = ''
for j = 1:size(totalGrade)
    letterGrades(j) = letters(totalGrade(j));
end
letterGrades
    