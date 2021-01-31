%Models I Final Project: Binary Number System
%Learning Objectives:
%   strings vs numbers
%   IO statements (by input,menu,fprintf)
%   conditionals (if,case)
%   loops
%% Part A: Binary System Introduction (Please Click on Run Section)
clear;
%1.Introduce Students binary system (unsigned)
%2.Students fill out a table by hand for 2-bits binary code
%3.Students develop basic code to convert 2-bit binary code
bin=input('What is the binary number of conversion?(in single quote) ');
%Students should understand clearly bin requires to be in char array or string ('')
dec=0;
if bin(1)=='1' %Students need to understand why '1' not 1
    dec=dec+2;
end
if bin(1)=='1'
    dec=dec+1;
end
fprintf('The converted decimal number is: %i\n',dec);
%4.TA check for 4 combinations
return;
%% Part B: Multiple Bits (Please Click on Run Section)
clear;
%Let students prompt users for how many bits (error if bin and bits conflict)
%Let students use for loop to convert
bin=input('What is the binary number of conversion?(in single quote) ');
bits=input('How many bits? ');
dec=0;
for n=1:bits
    if bin(n)=='1' 
        dec=dec+2^(bits-n);
    end
end
fprintf('The converted decimal number is: %i\n',dec);
return;
%% Part C: Signed System (Please Click on Run Section)
clear;
%1. Introduce signed binary system (leading bit is simply sign, 1 is -, 0
%is +, following bits are magnitude)
%2. Let students use menu and case statements to insert signed system
%3. In print statement, tell students that signed system & leading 1 is a
%special case
bin=input('What is the binary number of conversion?(in single quote) ');
bits=input('How many bits? ');
system=menu('What is the binary system of use?','Unsigned','Signed');
posdec=0;
switch system
    case 1
        fprintf('This is an unsigned binary number system.\n');
        for n=1:bits
            if bin(n)=='1'
                posdec=posdec+2^(bits-n);
            end
        end
    case 2
        fprintf('This is a signed binary number system.\n');
        for n=2:bits
            if bin(n)=='1'
                posdec=posdec+2^(bits-n);
            end
        end
end
if system==2 && bin(1)=='1'
    fprintf('The converted decimal number is: -%i\n',posdec);
else
    fprintf('The converted decimal number is: %i\n',posdec);
end
return