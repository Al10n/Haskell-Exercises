quadrat = \x -> x*x
summe_quadrate = \x y -> quadrat x + quadrat y
summe_quadrate (5-2) (quadrat (3-1))

Aplikative Auswertung

summe_quadrate (5-2) (quadrat (3-1))
summe_quadrate (3) (quadrat (3-1))
summe_quadrate (3) (quadrat (2))
summe_quadrate (3) ((\x -> x*x) (2))
summe_quadrate (3) (2*2)
summe_quadrate (3) (4)
(\x y -> quadrat x + quadrat y) 3 4
(quadrat 3+ quadrat 4)
(((\x -> x*x) 3) +quadrat 4)
((3*3)+quadrat 4)
(9+quadrat 4)
(9+((\x -> x*x) 4))
(9+16)
25

Normale Auswertung
quadrat = \x -> x*x
summe_quadrate = \x y -> quadrat x + quadrat y
summe_quadrate (5-2) (quadrat (3-1))

summe_quadrate (5-2) (quadrat (3-1))

(\x y -> quadrat x + quadrat y) (5-2) (quadrat (3-1))
((quadrat (5-2))+(quadrat (quadrat (3-1))))
(((\x -> x*x) (5-2))+(quadrat (quadrat (3-1))))
(((5-2)*(5-2))+(quadrat (quadrat (3-1))))
(((5-2)*(5-2))+(quadrat ((\x -> x*x) (3-1))))
(((5-2)*(5-2))+(quadrat ((3-1)*(3-1))))
(((5-2)*(5-2))+((\x -> x*x) ((3-1)*(3-1))))
(((5-2)*(5-2))+( ((3-1)*(3-1))*((3-1)*(3-1))))
((3*(5-2))+( ((3-1)*(3-1))*((3-1)*(3-1))))
((3*3)+( ((3-1)*(3-1))*((3-1)*(3-1))))
(9+(((3-1)*(3-1))*((3-1)*(3-1))))
(9+((2*(3-1))*((3-1)*(3-1))))
(9+((2*2)*((3-1)*(3-1))))
(9+((2*2)*(2*(3-1))))
(9+((2*2)*(2*2)))
(9+(4*(2*2)))
(9+(4*4))
(9+16)
25

