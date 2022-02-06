# Askeri sınavlara öğrenci kabulünde adayın yaşının 13 ve 17 aralığında (alt
# sınır ve üst sınır dahil) olması ve vücut kütle indeksinin 18.50-24.99 aralığında (alt
# sınır ve üst sınır dahil) olması istenmektedir.
# Klavyeden girilen yaş, boy ve kilo bilgilerine göre adayın uygun olup olmadığını bulan programı yazınız.


print "Yasinizi giriniz: "
yas = gets.chomp.to_f

print "Kilonuzu giriniz(kg): "
kilo = gets.chomp.to_f

print "Boyunuzu giriniz(m): "
boy = gets.chomp.to_f

vki = kilo / boy ** 2

if yas >= 13 && yas <= 17
    if vki >= 18.50 && vki <= 24.99
        print "Vucut kitle indeksiniz #{vki} ve askeri lise icin uygunsunuz."
    else  
        print "Yasiniz uygun ancak vucut kutle indeksiniz #{vki} ve askeri lise icin uygun degilsiniz."
    end
else 
    print "Yasiniz askeri lise icin uygun degil."
end 

