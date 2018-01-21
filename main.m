%Input data, max bit 3, max numbers in list can infinite
inputArr=[6 5 7 4 5 3 1 0 6 3 2 4 ]

b_inputArr=de2bi(inputArr, 3);
inmat=flip(b_inputArr, 2);
%Initialization to avoid empty error
col31= [];
col32= [];
col33= [];
col34= [];
col21= [];
col22= [];

%Ietration 1
[a, b, col1]=ietration(inmat);
%Ietration 2
[a1, b1, col21]=ietration(a(:,2:end));
[c1, d1, col22]=ietration(b(:,2:end));
col2=[col21;col22];
%Ietration 3
[~, ~, col31]=ietration(a1(:,2:end));
[~, ~, col32]=ietration(b1(:,2:end));
[~, ~, col33]=ietration(c1(:,2:end));
[~, ~, col34]=ietration(d1(:,2:end));
col3=[col31;col32;col33;col34];

%Join Result of 3 Ietrations
col=[col1,col2,col3];
%Show Decimal sorted result
bi2de(flip(col,2))