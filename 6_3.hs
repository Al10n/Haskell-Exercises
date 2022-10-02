let a = [1, 2, 3]
[1,2,3]
a::Num a=>[a]

let b = "ab"++ ['c', 'd']
"abcd"
b::[Char] bzw. b::String

let c = [1,2.0,3]
[1.0,2.0,3.0]
c::Fractional a=>[a]

let d= (False&& not True)||(not False&&True)
True
d::Bool

let e = [("a",1),("b",2)]
[("a",1),("b",2)]
e::Num b=>[([Char],b)]

let f = [1, 2, [3, 4, [5]]]
Fehler

let g = [[[1],[2]],[],[[3],[4]]]
[[[1],[2]],[],[[3],[4]]]
g::Num a=>[[[a]]]
