data Map a b =MapElem a b (Map a b)|Empty

showMap :: (Show a, Show b) => Map a b -> String
showMap m = "{ " ++ showMap ' m ++ " }"
where
showMap' Empty= ""
showMap' (MapElem a b Empty)=
  concat [ show a, " -> ", show b]
showMap' (MapElem a b rest) =
  concat [ show a, " -> ", show b,", ", showMap' rest]
