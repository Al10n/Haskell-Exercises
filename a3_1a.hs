import System.IO
main::IO()
main = do
	inhalt<-readFile "palindrom.txt"
	putStrLn $ unlines [w|w<-words inhalt] 
