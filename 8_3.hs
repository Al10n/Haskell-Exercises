succ' :: Integer -> Integer
succ' x = x + 1
pred' :: Integer -> Integer
pred' x = x - 1

plus :: Integer -> Integer -> Integer
plus x 0 = x
plus 0 x = x
plus x y = plus (pred' x) (succ' y)

minus :: Integer -> Integer -> Integer
minus x 0 = x
minus x y = minus (pred' x) (pred' y)

mult :: Integer -> Integer -> Integer
mult x 0=0
mult 0 x=0
mult x 1=x
mult 1 x=x
mult x y = plus y (mult (pred' x) y )

mod' :: Integer -> Integer -> Integer
mod' x 1=0
mod' x y
        |x<y=x
        |otherwise = mod' (minus x y) y
