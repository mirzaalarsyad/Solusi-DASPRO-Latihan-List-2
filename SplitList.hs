-- 3. Tuliskan realisasi dari fungsi splitList berikut ini:

splitList:: [Int] -> ([Int],[Int])
-- {  splitList(li) menghasilkan 2 list of integer, list
--   pertama memuat bilangan positif dan 0 yang merupakan
--   elemen dari li (dengan urutan kemunculan yang tidak
--   berubah), sedangkan list kedua memuat bilangan negatif
--   elemen li.
--   Prekondisi: li mungkin kosong -}

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

listNegatif :: [Int] -> [Int]
-- Membuat list berisikan bilangan negatif
listPositif :: [Int] -> [Int]
-- Membuat list berisikan bilangan positif

--REALISASI
listNegatif l  | (isEmpty l) = []
               | (head l) < 0 = konso (head l) (listNegatif (tail l))
               | otherwise = listNegatif (tail l)
listPositif l  | (isEmpty l) = []
               | (head l) >= 0 = konso (head l) (listPositif (tail l))
               | otherwise = listPositif (tail l)
splitList l = (listPositif l, listNegatif l)
   