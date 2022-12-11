permutations :: Eq a => [a] -> [[a]]
permutations [] = [[]]
permutations as = do a <- as
                     let l = delete a as
                     ls <- permutations l
                     return $ a : ls