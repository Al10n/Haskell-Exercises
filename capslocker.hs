import Control.Monad
import Data.Char
main= forever (do
putStrLn "Give some input loser: "
l<-getLine
putStrLn (map toUpper l))
