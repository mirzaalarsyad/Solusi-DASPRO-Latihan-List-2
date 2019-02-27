-- 1. Fungsi sumIsiList menghitung hasil penjumlahan dari seluruh 
--    elemen sebuah list of integer l yang tidak kosong.

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 


-- SUM ISI LIST                           sumIsiList(l)
-- DEFINISI DAN SPESIFIKASI
sumIsiList :: [Int] -> Int
-- { menerima masukan sebuah list of integer, misalnya l, yang tidak kosong dan menghasilkan penjumlahan semua elemen list l }
-- REALISASI
sumList l = if (isOneElmt l) then (head l) --basis
            else (head l) + sumList (tail l) --rkurens