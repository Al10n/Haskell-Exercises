data Op = Add|Sub|Mult|Div

apply :: Op->Int->Int->Int
apply Add x y=x+y
apply Sub x y=x-y
apply Mult x y=x*y
apply Div x y=x`div`y

valid :: Op->Int->Int->Bool
valid Add _ _ = True
valid Sub x y=x>y
valid Mult _ _= True
valid Div x y =(x`mod`y)==0 

data Expr = Val Int | App Op Expr Expr

eval::Expr->[Int]
eval (Val n)= [n|n>0]
eval (App o e1 e2)= [apply o x y|x<-eval e1,y<-eval e2, valid o x y]  

choices::[a]->[[a]]
choices= permutations xs

values::Expr->[Int]
values (Val n)= [n]
values (App _ e1 e2)=values e1++values e2

solution:: Expr->[Int]->Int->Bool
solution e ns n= elem (values e) (choices ns) && eval e==[n]

