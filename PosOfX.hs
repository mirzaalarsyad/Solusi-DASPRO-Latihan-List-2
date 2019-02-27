-- 7. Tuliskan realisasi dari fungsi posOfX berikut ini:
posOfX :: Char -> [Char] -> Int
{- posOfX(e,lc) menghasilkan sebuah bilangan integer yang
   menyatakan posisi e pada list of character lc. Jika e
   bukan elemen dari lc, fungsi akan menghasilkan 0.
   Prekondisi: lc memiliki elemen unik -}
   
-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Char -> [Char] -> [Char]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Char] -> Char -> [Char]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
   e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Char] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Char] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1

isElmtOf :: Char -> [Char] -> Bool
-- True jika c elemen dari l
isElmtOf c l | isEmpty l = False --basis
             | c == head l = True || (isElmtOf c (tail l))
             | otherwise = False || (isElmtOf c (tail l))

-- REALISASI

posOfX c lc | isEmpty lc = 0 --basis
            | isElmtOf c lc == False = 0 --basis
            | otherwise = if (c /= head lc) then 1 + (posOfX c (tail lc)) else 1 --recc
