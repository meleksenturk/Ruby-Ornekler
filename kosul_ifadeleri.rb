# Bir dersten alınan vize, final, quiz ve devam puanları girilip ortalaması
# hesaplandıktan sonra dersten hangi puan ve harf notu aldığını hesaplayan programı
# yazınız. Ortalama vizenin %30’u, quizin %10’u, devamlılık %10’u ve finalin %50’si
# şeklindedir. Girdiler kullanıcıdan alınacaktır. Harf notları şöyledir:
# 90 ile 100 arası A, 80 ile 89 arası B, 70 ile 79 arası C, 60 ile 69 arası D ve bunun
# dışındaki notlar ise F’dir.



print "Vize notunuzu giriniz: "
vize = gets.chomp.to_f

print "Quiz notunuzu giriniz: "
quiz = gets.chomp.to_f

print "Devam notunuzu giriniz: "
devam = gets.chomp.to_f

print "Final notunuzu giriniz: "
final = gets.chomp.to_f

ortalama = (vize * 0.3) + (quiz * 0.1) + (devam * 0.1) + (final * 0.5)

if ortalama >= 90 && ortalama <= 100
    harf_notu = "A"
elsif ortalama >= 80 && ortalama < 90
    harf_notu = "B"
elsif ortalama >= 70 && ortalama < 80
    harf_notu = "C"
elsif ortalama >= 60 && ortalama < 70
    harf_notu = "D"
else   
    harf_notu = "F"
end


print "Ortalamaniz #{ortalama} ve harf notunuz #{harf_notu}"
