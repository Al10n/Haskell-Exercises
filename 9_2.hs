data Operator = Plus|Minus|Mult|Div deriving (Show)
data Term a = C a|BinaryTerm Operator (Term a) (Term a)|Unaryterm Operator (Term a) deriving (Show)

eval :: Integral a => Term a -> a
eval C a = a
eval (BinaryTerm Plus t1 t2)= eval t1 + eval t2
eval (BinaryTerm Minus t1 t2)= eval t1 - eval t2
eval (BinaryTerm Mult t1 t2)= eval t1 * eval t2
eval (BinaryTerm Div t1 t2)= eval t1 `div` eval t2
eval (UnaryTerm Minus t1) = -(eval t1)
