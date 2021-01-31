%Honors TA Final Project - Binary to Decimal Converter
%Liu 10/30/2017
%Standard Answer

bin=input('What is the binary number of conversion?(in single quote)  ');
%bin needs to be in char array or string ('')
bits=input('How many bits? ');
system=menu('What is the binary system of use?','Unsigned','Signed');
posdec=0;

switch system
    case 1
        fprintf('This is an unsigned binary number system.\n');
        for n=1:bits
            if bin(n)=='1' %Students need to understand why '1' not 1
                posdec=posdec+2^(bits-n);
                %students self decide algorithm
            end
        end
    case 2
        fprintf('This is a signed binary number system.\n');
        for n=2:bits
            if bin(n)=='1' %Students need to understand why '1' not 1
                posdec=posdec+2^(bits-n);
            end
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%To substitude the above computation code, students can also use          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% switch system
%     case 1 
%         fprintf('This is an unsigned binary number system.\n');
%         startn=1;
%     case 2
%         fprintf('This is a signed binary number system.\n');
%         startn=2;
% end
% for n=startn:bits
%     if bin(n)=='1'
%         posdec=posdec+2^(bits-n);
%     end
% end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


if system==2 && bin(1)=='1' %tell students this is a special case
    fprintf('The converted decimal number is: -%i\n',posdec);
else
    fprintf('The converted decimal number is: %i\n',posdec);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%To substitude fprintf statements, students can also use                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fprintf('The converted decimal number is: %i\n',(-1)^negflag*posdec);
%Provided we use a negative flag, or use conditional as a boolean value
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%