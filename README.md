# Page-Rank
Numerical Methods

Programul folosit: Octave
Cerinta 1
Functia Iterative se deschide cu citirea corespunzatoare a datelor dintr-un fisier. Citesc linie cu linie, urmand apoi sa convertesc tipul variabilelor din string in tip numeric. Construiesc matricea de adiacenta A, respectiv vectorul de link-uri L. Conform formulelor de obtinere a PageRank-ului, ma folosesc de un while care se opreste cand norma de diferenta celor doi vectori(R si R vechi) este mai mica decat eps (eroarea data).

Cerinta 2
Functia Algebraic seamana foarte mult cu metoda Iterative, dar aceasta presupune calcularea inversei matricei prin intermediul algoritmului Gram-Schmidt
A = Q * R
R^-1 * Q' = B

Cerinta 3 - PageRank
Citesc corespunzator datele. Imi pun in R1 matricea prin metoda Iterative, respectiv in R2 prin metoda Algebraic. Inchid fisierul si deschid unul nou pt scriere.
Imi iau 3 vectori pentru stocarea indicilor:
->ind = nr curent
->a = indicii nesortati
->b = indicii sortati (Metoda de sortare = BubbleSort)
Compar indicii PR si construiesc vect b.
Transform vectorii in transpuse pentru a avea forma dorita de
cerinta enuntului si afisez indicii ceruti. 
+Functia Apartenenta calculeaza y conform functiei membru.
