function [R1 R2] = PageRank(nume, d, eps)
% Calculeaza indicii PageRank pentru cele 3 cerinte
% Scrie fisierul de iesire nume.out

%functie pentru precizia zecimalelor
output_precision(7);
fid = fopen(nume, 'r');

N = fgetl(fid);
N = str2num(N);

ind = zeros(1,N);
a = zeros(1,N);
b = zeros(1,N);

for i = 1:N
    x = fgetl(fid);
end

val1 = fgetl(fid);
val1 = str2num(val1);

val2 = fgetl(fid);
val2 = str2num(val2);

R1 = Iterative(nume, d, eps);
R2 = Algebraic(nume, d);

fclose(fid);

nume = [nume '.out'];
fod = fopen(nume, 'w');

%nr de pagini web analizate
fprintf(fod, "%d\n", N);

%R1 prin met iterativa
fprintf(fod, "%f\n", R1);
fprintf(fod, "\n");
%R2 prin met algebraica
fprintf(fod, "%f\n", R2);
fprintf(fod, "\n");

%ne ajutam de variabila R in care 
%punem transpusa lui R2
R = R2';
%vectorul cu indici propriu-zisi
for i = 1:N
  ind(i) = i;
end
%vectorul cu indici PR nesortati
for i = 1:N
  a(i) = R(i);
end
%bubble sort crescator
for i = 1:N
	for j = 1:N
		if (R(i) < R(j) && (abs(R(i) - R(j)) > eps))
			aux = R(i);
			R(i) = R(j);
			R(j) = aux;
		end
	end
end

%vectorul cu indici PR sortati descrescator
for i = 1:N
  b(i) = R(N-i+1);
end
%compar indicii PR si contruiesc vect b bun
for i = 1:N
  for j = 1:N
    if b(i) == a(j)
      b(i) = j;
      break;
    end
  end
end

for i = 1:N
  u(i) = Apartenenta(R(i), val1, val2);
end

ind = ind';
a = a';
b = b';
u = u';

for i = 1:N
  fprintf(fod, "%d %d %f \n", ind(i), b(i), u(N-i+1));
end

fclose(fod);
end

 