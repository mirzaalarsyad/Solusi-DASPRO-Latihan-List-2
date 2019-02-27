-- 5. Tuliskan realisasi dari fungsi isOrdered berikut ini:
isOrdered :: [Int] -> Bool
{- isOrdered(l) menghasilkan true jika elemen-elemen pada
   l terurut membesar, false jika tidak.
   Prekondisi: l tidak kosong -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
   e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1

isOrdered li | isOneElmt li = True --basis
             | otherwise = if(head li <= (head(tail li))) then (True && isOrdered (tail li)) --rekurens
                           else False