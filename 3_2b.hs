import System.IO
main::IO()
main=do
	handleWB<-openFile "woerterbuchNeu.txt" AppendMode
	putStrLn "Wort im deutschen Sprache: "
	deutsch<-getLine
	putStrLn "Wort im bairischen Sprachn: "
	bairisch<-getLine
	
	if null bairisch||null deutsch
		then return ()
		else do
     			putStrLn (deutsch++" heisst im bairischen Sprache: "++bairisch)
     			hPutStr handleWB (deutsch++" "++bairisch++"\n")
     			main	
