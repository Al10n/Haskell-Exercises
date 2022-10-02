import System.IO
main=do
inhalt<-readFile "palindrom.txt"
putStrLn $ unlines [w ++" " ++show(length w)|w<-words inhalt]

