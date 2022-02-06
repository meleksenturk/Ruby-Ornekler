# Ortadan ikiye ayrıldığında ortaya çıkan sayıların toplamının karesine eşit olan
# dört basamaklı sayılara Köksal Sayı dendiğini varsayınız. Buna göre klavyeden
# rakamları tek tek girilen 4 basamaklı bir sayının Köksal Sayı olup olmadığını bularak
# ekrana yazan programı yazınız. Örneğin ABCD sayısının Köksal Sayı olup olmadığı
# şöyle hesaplanacaktır:
# Ortadan ikiye ayrıldığında AB ve CD sayıları ortaya çıkar.


print "Dort basamakli sayinin ilk rakamaini giriniz: "
ilk_rakam = gets.chomp

print "Dort basamakli sayinin ikinci rakamaini giriniz: "
ikinci_rakam = gets.chomp

print "Dort basamakli sayinin ucuncu rakamaini giriniz: "
ucuncu_rakam = gets.chomp

print "Dort basamakli sayinin dorduncu rakamaini giriniz: "
dorduncu_rakam = gets.chomp

x1 = ilk_rakam + "" + ikinci_rakam     #sayinin ilk iki rakami
x2 = ucuncu_rakam + "" + dorduncu_rakam  # sayinin son iki rakami
x = x1.to_i + x2.to_i

tum_rakamlar = (ilk_rakam + "" + ikinci_rakam) + (ucuncu_rakam + "" + dorduncu_rakam)  #sayinin tamamini verir.

if x ** 2 == tum_rakamlar.to_i
    print "Girilen sayi #{tum_rakamlar} dir. İkiye ayrilmis durumda #{x1} ve #{x2} dir. #{x} ^ 2 = #{x ** 2} olmaktadir. Sayi Koksal Sayidir"
else
    print "Girilen sayi #{tum_rakamlar} dir. İkiye ayrilmis durumda #{x1} ve #{x2} dir. #{x} ^ 2 = #{x ** 2} olmaktadir. Sayi Koksal Sayi degildir."
end

