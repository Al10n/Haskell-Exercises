import System.IO
main = do 
	inhalt <- readFile "palindrom.txt"
	putStrLn $ unlines [w ++" "++show(length w)++" "++(istPalindromDe w)|w<-words inhalt]

istPalindrome w = w==reverse w
istPalindromDe w = if istPalindrome w 
then "Ja"
else "Nein"
