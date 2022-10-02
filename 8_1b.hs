import Data.Char (toUpper)
capitalizedInitials :: String -> String
capitalizedInitials string = map (\x-> toUpper (x!!0)) (words string)
capitalizedInitials' = map (\x-> toUpper (x!!0)) . (words)
