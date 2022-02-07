# Bir benzin istasyonu gün sonunda, 4 adet araba markasından (Renault, Mazda, Honda, Ford) hangisinin 
# daha çok geldiğini ve hangi markaya daha çok benzin satışı yapıldığı bilgisayar uygulama programı
# kullanılarak bulunmak istenmektedir. Buna göre görevli elindeki avuçiçi bilgisayara gelen arabanın
# markasını belirten kodu ve benzin satış tutarını girmektedir. Bu işlem gün sonunda görevlinin araç
# kodu yerine 111 girmesi ile sonlanmalı ve girdi hata kontrolü yapılmalıdır. Araçların marka kodları:
# Renault --> 1 , Mazda --> 2 , Honda --> 3 , Ford --> 4

print "Programdan cikmak icin marka olarak 111 giriniz.\n"

renault = 0; mazda = 0; honda = 0 ; ford = 0
tutar1 = 0; tutar2 = 0; tutar3 = 0; tutar4 = 0
tur1 = 0; tur2 = 0 ; tur3 = 0 ; tur4 = 0     #markanin kac kez geldiginni tutmak icin

degerler = []

while degerler[0].to_i != 111

    print "Marka, tutar giriniz: "
    degerler = gets.chomp.split

    if degerler[0].to_i == 1
        renault += 1
        tutar1 += degerler[1].to_i
        tur1 += 1

    elsif degerler[0].to_i == 2
        mazda += 1
        tutar2 += degerler[1].to_i
        tur2 += 1

    elsif degerler[0].to_i == 3
        honda += 1
        tutar3 += degerler[1].to_i
        tur3 += 1

    elsif degerler[0].to_i == 4
        ford += 1
        tutar4 += degerler[1].to_i
        tur4 += 1

    else
    end

end
puts "\nPROGRAM SONLANDİRİLDİ"
# puts renault
# puts mazda
# puts honda 
# puts ford

marka_sayisi= [renault, mazda, honda, ford]
markalar = ["renault", "mazda", "honda", "ford"]

i = 0
en_cok_marka = []

while i < 4
    while marka_sayisi[i] == marka_sayisi.max
        en_cok_marka << markalar[i]
        i += 1
    end
i +=1
end

tutarlar = [tutar1, tutar2, tutar3, tutar4]
en_cok_satis_markasi = []

j = 0
while j < 4
    while tutarlar[j] == tutarlar.max
        en_cok_tutar = tutarlar.max
        en_cok_satis_markasi << markalar[j]
        j += 1
    end
    j += 1
end


tur_sayilari= [tur1, tur2, tur3, tur4]

n = 0
while n < 4
    while tur_sayilari[n] == tur_sayilari.max
        kac_kez = tur_sayilari.max
        n += 1
    end
    n += 1
end 

puts "\n********** OZET BİLGİLER ************"

puts "\nEn cok gelen arac markasi : #{en_cok_marka.join','} (#{kac_kez} kez)"
puts "En cok satis yapilan marka : #{en_cok_satis_markasi.join','} (#{en_cok_tutar} TL)"

puts "\n*****************************************"
