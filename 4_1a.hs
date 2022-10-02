import System.IO
main::IO()
main=do
	handleWB<-openFile "weorterbuch.txt" ReadMode
	contentWB<-hGetContent handleWB

	putStrLn "Geben Sie ein hochdeutsches Wort ein: "
	suchWort<-getLine
	--TODO 
	--woerterbuch parsen
	let wb= lines contentWB
	--suchWort in WB finden, bairisch zurueckgeben
	let uebersetzungen= passendeEintraege suchWort wB

	--Ausgabe an Nutzer
	putStrLn (if(null uebersetzungen)
			then "Keine Uebersetzungen"
			else unwords uebersetzungen)

	hClose handleWb


passendeEintraege::String->[String]->[String]->[String]
passendeEintraege suchWort wb= _pE suchWort wb []

--rekursive Hilfsfunktion
_pE::String->[String]->[String]
_pE suchwort [] ubz= ubsz
_pE suchwort (x:xs) ubsz
	|(words x)!!-1==suchwort=_pE suchwort xs ((words x)!!1:ubsz)
	|otherwise =_pE suchwort xs ubsz
