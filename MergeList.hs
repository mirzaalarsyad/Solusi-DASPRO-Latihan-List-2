-- 4. Tuliskan realisasi dari fungsi MergeList berikut ini:

mergeList:: [Int] -> [Int] -> [Int]
--{- mergeList(li1,li2) menghasilkan list of integer yang
--   merupakan hasil penggabungan li1 dan li2, dan tetap
--   terurut membesar.
--   Prekondisi: li1 dan li2 adalah list terurut membesar
--   dan mungkin kosong -}

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

inputList :: Int -> [Int] -> [Int]
-- menerima masukan satu integer untuk dimasukkan kedalam suatu list

--REALISASI
mergeList li1 li2 | (isEmpty li1) = li2
                  | otherwise = mergeList (tail li1) (inputList (head li1) li2)

inputList n l = if (isEmpty l) then konso n l --basis
                else if (n <= head l) then konso n l
                     else konso (head l) (inputList n (tail l)) -- recc
                  