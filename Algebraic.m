function R = Algebraic(nume, d)
% Functia care calculeaza vectorul PageRank folosind varianta
% algebrica de calcul.
output_precision(7);

fid = fopen(nume, 'r');
N = fgetl(fid);
N = str2num(N);

x = zeros(1,N);
L = zeros(1,N);

A = zeros(N);
M = zeros(N);

%contruiesc mat A & L
for i = 1:N
    x = fgetl(fid);
    x = str2num(x);
    for j = 3:length(x)
        A(i,x(j)) = 1;
    end
    if A(i,i) == 1
        A(i,i)=0;
        x(2) = x(2)-1;
    end
    L(i) = x(2);
end
%construiesc mat M
for i = 1:N
    for j = 1:N
        if A(j,i) == 1
            M(i,j) = 1/L(j);
        end
    end    
end

u = ones(N, 1);
R = ones(N, 1);
R = R.*1/N;

%calculez inversa mat cu GS
B = GramS(eye(N) - d*M);

R = B*((1-d)/N)*u;
fclose(fid);
end