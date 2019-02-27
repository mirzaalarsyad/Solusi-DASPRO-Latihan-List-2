
splitAlternate :: [Char]-> ([Char],[Char])

splitAlternate l =
            let odd l  |null l = []
                       |length l ==1 = [head l]
                       |otherwise= [head l] ++ odd (tail(tail l))
                even l |null l = []
                       |length l==1 = tail l
                       |otherwise= [head (tail l)] ++ even (tail(tail l))
            in
                (odd l, even l)
     