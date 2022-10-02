f x = if f x == f x then f x else f x > f x
f::t->Bool

f x = if f(x) == f(x) then f(x) else (f (x + 1)) > (f (x + 2))
f :: Num t => t -> Bool

f x y z = if x > y then z else z + 1
f:: (Num a1, Ord a) => a->a->a1->a1

f 0 = 1
f n = n * f (n - 1)
f::(Eq a,Num a)=> a->a

f x = [y | y <- x, y `mod` 2 == 0]
f:: Integral a => [a]->[a]

(\x -> x == '3')
(\x -> x == '3')::Char->Bool