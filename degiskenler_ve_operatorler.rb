#Kullanıcıdan kuruş miktarı bilgisini alarak girilen kuruşu temel aritmetik işlemler kullanarak
#bozuran programi yaziniz. 



print "Kurus miktarini giriniz (1 ile 99 arasinda) :"
girilen_kurus = gets.chomp.to_i

kurus_50 = girilen_kurus / 50
kalan_kurus = girilen_kurus - kurus_50 * 50

kurus_10 = kalan_kurus / 10
kalan_kurus -= kurus_10 * 10

kurus_5  = kalan_kurus / 5
kalan_kurus -= kurus_5 * 5

kurus_1 = kalan_kurus / 1
kalan_kurus -= kurus_1 * 1

print "#{girilen_kurus} kurusun esiti :\n "
print "***********************************\n"

puts "#{kurus_50} tane 50 kurus. "
puts "#{kurus_10} tane 10 kurus. "
puts "#{kurus_5} tane 5 kurus. "
puts "#{kurus_1} tane 1 kurus "

print "\n**********************************"