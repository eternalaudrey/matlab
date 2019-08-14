clc;
close all;
clear all;
warning off;
filename = 'nasdaq2.0.xlsx';
sheet = 1;
xlRange = 'C2:I207';  
valuation = xlsread(filename,sheet,xlRange);
for i=1:7
 valuation(:,i)=(valuation(:,i)-min(valuation(:,i)))./(max(valuation(:,i))-min(valuation(:,i)));
end
disp(valuation);
