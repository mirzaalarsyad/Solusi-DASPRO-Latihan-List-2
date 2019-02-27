-- 8. Tuliskan realisasi dari fungsi splitAlternate berikut ini:
splitAlternate :: [Char] -> ([Char],[Char])
{- splitAlternate(l) menghasilkan dua buah list, misalnya
   l1 dan l2. l1 berisi semua elemen l pada posisi
   ganjil, l2 berisi semua elemen l pada posisi genap -}
   
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
     
