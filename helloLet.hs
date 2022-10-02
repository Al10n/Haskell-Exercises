import Data.Char
main = do 
putStrLn "What first name?"
firstName<-getLine
putStrLn "What last name bro?"
lastName<-getLine
let bigFirstName = map toUpper firstName
let bigLastName = map toUpper lastName
putStrLn $ "Hey yo bro, " ++ bigFirstName ++" " ++bigLastName++" what is up?"

