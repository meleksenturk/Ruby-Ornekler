# 10 elemanlı yeni bir C dizisi oluşturan programı yazınız.
# İki dizinin en büyük elemanlarını bularak yeni bir D dizisi oluşturan programı yazınız.
# C dizisini rastgele karıştırıp en son indise 55 sayısını ekleyip ekrana yazdıran ardından oluşan
# bu dizinin ortanca elemanını ekrana yazdıran programı yazınız.
# D dizisinin başına 100, 200, ve 300 sayılarını sırasıyla ekleyen ve bu yeni diziyi ekrana bastıran
# programı yazınız.


a = [4, 5, 6, 8, 10]
b = [2, 7, 10, 12, 2]

islemler = "\n1-10 elemanlı yeni bir C dizisi oluşturan programı yazınız.\n
2- İki dizinin en büyük elemanlarını bularak yeni bir D dizisi oluşturan programı yazınız.\n
3- C dizisini rastgele karıştırıp en son indise 55 sayısını ekleyip ekrana yazdıran ardından oluşan
bu dizinin ortanca elemanını ekrana yazdıran programı yazınız.\n
4- D dizisinin başına 100, 200, ve 300 sayılarını sırasıyla ekleyen ve bu yeni diziyi ekrana bastıran
programı yazınız."

puts islemler

secenekler = [1 , 2, 3, 4]
print "\nYapmak istediginiz islemi seciniz: "
islem = gets.chomp.to_i

c = a + b

d = [a.max, b.max] 

if islem == secenekler[0]
    print c

elsif islem == secenekler[1]
    print d

elsif islem == secenekler[2]
    random = c.shuffle
    random << 55
    print random

    print "\nOrtanca eleman : #{random[5]}"

elsif islem == secenekler[3]
    d.unshift(100)
    d.unshift(200)
    d.unshift(300)

    print d
else
    print "Cikis yapiliyor..."

end
