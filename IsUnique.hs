-- 6. Tuliskan realisasi dari fungsi isUnique berikut ini:
isUnique :: [Char] -> Bool
{- isUnique(lc) menghasilkan true jika lc adalah list
   dengan elemen unik, yaitu tidak ada elemen pada lc
   yang muncul lebih dari 1 kali -}
   
-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Char -> [Char] -> [Char]
{- konso e lc menghasilkan sebuah list of char dari e (sebuah char) dan lc
   (list of char), dengan e sebagai elemen pertama: e o lc -> lc' -}
-- REALISASI
konso e lc = [e] ++ lc

konsDot :: [Char] -> Char -> [Char]
{- konsDot lc e menghasilkan sebuah list of c dari li (list of char) dan 
   e (sebuah char), dengan e sebagai elemen terakhir: lc o e -> lc' -}
-- REALISASI
konsDot lc e = lc ++ [e]

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Char] -> Bool
-- isEmpty l  true jika list of char l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Char] -> Bool
-- isOneElmt l true jika list of char l hanya mempunyai satu elemen
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
