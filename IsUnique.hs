-- 6. Tuliskan realisasi dari fungsi isUnique berikut ini:
isUnique :: [Char] -> Bool
{- isUnique(lc) menghasilkan true jika lc adalah list
   dengan elemen unik, yaitu tidak ada elemen pada lc
   yang muncul lebih dari 1 kali -}
   
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
isEmpty :: [Char] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Char] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1

munculSekali :: Char -> [Char] -> Int
-- Mengembalikan nilai 1 jika char hanya muncul sekali

-- REALISASI
munculSekali c lc | isEmpty lc = 0 --basis
                  | c == head lc = 1 + (munculSekali c (tail lc)) --recc
                  | otherwise = munculSekali c (tail lc)
isUnique lc | isEmpty lc = True --basis
            | munculSekali (head lc) lc == 1 = True && isUnique (tail lc) --recc
            | otherwise = False