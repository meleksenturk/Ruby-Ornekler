# A, B ve C her biri 5 elemanlı olan tam sayılardan oluşan kümeler olsun. Bu üç kümenin birleşim
# kümesini ve bu kümenin elemanlarını büyükten küçüğe sıralı bir şekilde ekrana yazdıran programı
# yazınız.


a = [1, 2, 3, 8, 3]
b = [3, 5, 9, 7, 6]
c = [12, 13, 15, 10, 1]

birlesim = a | b | c
puts "\nDizilerin birlesimi: #{birlesim}"

sirali = birlesim.sort.reverse
print "\nOlusan birlesim dizisinin buyukten kucuge siralanmıs hali: #{sirali}"