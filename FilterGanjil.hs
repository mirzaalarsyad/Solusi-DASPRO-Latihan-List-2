-- 2. Fungsi filterGanjil melakukan filtering terhadap sebuah 
--    list of integer li sehingga menghasilkan list dengan elemen 
--    yang hanya terdiri atas bilangan ganjil yang muncul di li. 
--    Diasumsikan semua elemen li adalah bilangan integer positif atau 0.

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

-- FILTER GANJIL                        filterGanjil(l)
-- DEFINISI DAN SPESIFIKASI
filterGanjil :: [Int] -> [Int]
-- { filterGanjil menghapus semua kemunculan genap pada l, sehingga kembalian dari fungsi adalah list of integer (l) yang tidak memiliki elemen genap}
-- { elementSetelahX membuat list berisikan elemen setelah x pada list input}
-- REALISASI
filterGanjil l = if (isEmpty l) then l -- basis
                   else if (mod (head l) 2 == 1) then  konso (head l) (filterGanjil (tail l) x)
                        else filterGanjil (tail l) x --recc