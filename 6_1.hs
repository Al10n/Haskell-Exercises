quadrat = \x -> x*x
summe_quadrate = \x y -> quadrat x + quadrat y
null = \x -> 0
f = \n -> if null (quadrat n) /= n then summe_quadrate (n-2) (n-1) else n

aplikative Auswertung
f 3
(\n -> if null (quadrat n) /= n then summe_quadrate (n-2) (n-1) else n) 3
if null (quadrat 3) /= 3 then summe_quadrate (3-2) (3-1) else 3
if null ((\x -> x*x) 3) /= 3 then summe_quadrate (3-2) (3-1) else 3
if null ((3*3)) /= 3 then summe_quadrate (3-2) (3-1) else 3
if null 9 /= 3 then summe_quadrate (3-2) (3-1) else 3
if (\x -> 0) 9 /= 3 then summe_quadrate (3-2) (3-1) else 3
if 0 /= 3 then summe_quadrate (3-2) (3-1) else 3
if True then summe_quadrate (3-2) (3-1) else 3
summe_quadrate (3-2) (3-1)
summe_quadrate 1 (3-1)
summe_quadrate 1 2
(\x y -> quadrat x + quadrat y) 1 2
quadrat 1 + quadrat 2
(\x -> x*x) 1 + quadrat 2
1*1 + quadrat 2
1*1 + quadrat 2
1+(\x -> x*x) 2
1+(2*2)
1+4
5

normale Auswertung
f 3
(\n -> if null (quadrat n) /= n then summe_quadrate (n-2) (n-1) else n) 3
if null (quadrat 3) /= 3 then summe_quadrate (3-2) (3-1) else 3
if (\x -> 0) (quadrat 3) /= 3 then summe_quadrate (3-2) (3-1) else 3
if 0/=3 then summe_quadrate (3-2) (3-1) else 3
if True then summe_quadrate (3-2) (3-1) else 3
summe_quadrate (3-2) (3-1)
(\x y -> quadrat x + quadrat y) (3-2) (3-1)
quadrat (3-2)+ quadrat (3-1)
(\x -> x*x) (3-2)+ quadrat (3-1)
(\x -> x*x) (3-2)+ (\x -> x*x) (3-1)
((3-2)*(3-2))+((3-1)*(3-1))
(1*(3-2))+((3-1)*(3-1))
(1*1)+((3-1)*(3-1))
(1*1)+(2*(3-1))
(1*1)+(2*2)
1+(2*2)
1+4
5

Vorteile: Die (quadrat n) Funktion wird nicht ausgewertet. Weniger Rechnungen, kurzere Terminierungszeit.




