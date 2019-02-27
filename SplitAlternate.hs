-- 8. Tuliskan realisasi dari fungsi splitAlternate berikut ini:
splitAlternate :: [Char] -> ([Char],[Char])
{- splitAlternate(l) menghasilkan dua buah list, misalnya
   l1 dan l2. l1 berisi semua elemen l pada posisi
   ganjil, l2 berisi semua elemen l pada posisi genap -}
   
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

posGanjil :: [Char] -> [Char]
-- mengembalikan list berisi char pada posisi ganjil
posGanjil l | isEmpty l = [] --basis
            | isOneElmt l = [head l] --basis
            | otherwise = konso (head l) (posGanjil (tail(tail l))) --recc
posGenap  :: [Char] -> [Char]
-- mengembalikan list berisi char pada posisi genap
posGenap l | isEmpty l = [] --basis
           | isOneElmt l = [] --basis
           | otherwise = konso (head (tail l)) (posGanjil (tail(tail l))) --recc

-- REALISASI
splitAlternate li = (posGanjil li, posGenap li)