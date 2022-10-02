data Operator = Plus|Minus|Mult|Div deriving (Show)
data Term a = C a|BinaryTerm Operator (Term a) (Term a)|Unaryterm Operator (Term a) deriving (Show)

eval :: Integral a => Term a -> a
eval C a = a
eval (BinaryTerm Plus t1 t2)= eval t1 + eval t2
eval (BinaryTerm Minus t1 t2)= eval t1 - eval t2
eval (BinaryTerm Mult t1 t2)= eval t1 * eval t2
eval (BinaryTerm Div t1 t2)= eval t1 `div` eval t2
eval (UnaryTerm Minus t1) = -(eval t1)

simplify :: Term -> Term
simplify C a = C a
simplify (BinaryTerm Operator t1 t2)= BinaryTerm Operator (simplify t1) (simplify t2)
simplify (UnaryTerm Operator t1)= BinaryTerm Operator (simplify t1)
simplify (UnaryTerm Minus (UnaryTerm Minus t1)) = simplify t1
simplify (BinaryTerm Plus t1 (UnaryTerm Minus t2))= BinaryTerm Minus simplify (t1) simplify (t2)
simplify (BinaryTerm Minus t1 (UnaryTerm Minus t2))= BinaryTerm Minus simplify (t1) simplify (t2)
