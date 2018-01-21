function [Zmat, Omat, col]=ietration(inputArr)
Zmat=[];
Omat=[];
Zero=[];
One=[];

%b_inputArr=de2bi(inputArr, 3);
inmat=inputArr;
[num,bits]=size(inmat);
%inmat
for iet = 1:num
    if 0==inmat(iet,1);
        Zmat=[Zmat;inmat(iet, :)];
        z=inmat(iet,1);
        Zero=[Zero;z];
        
    elseif 1==inmat(iet,1);
        Omat=[Omat;inmat(iet, :)];
        o=inmat(iet,1);
        One=[One;o];
        
    end
end
col=[Zero;One];
One=[];
Zero=[];