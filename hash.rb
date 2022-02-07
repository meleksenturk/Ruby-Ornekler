# Birkaç ayrıntıyı tartışmak istiyorum
# Kendime ait bir odam olmasını istiyorum
# Elimde olsa burada seninle yaşarım
# İçeride kalmaktansa dışarı çıkmayı tercih ederim
# Bugün okula gitmeyi tercih etmiyorum
# Bana yardım edersen çok minnettar olurum
# İki odalı bir daire kiralamak isterim
# Bahçede bana yardımcı olmanı rica ediyorum
# Burada ne olduğunu bilmek istiyorum
# Duruma yardım ettiğini gerçekten sanmıyorum


# Yukarıdaki cümlelerden oluşan ve sizinle paylaşılmış olan Cümleler.txt dosyası içerisindeki cümleleri
# oluşturan kelimeleri kullanarak bir hash (sözlük) yapısı oluşturmanız istenmektedir.

# Bu yapı oluşturulduktan sonra sözlüğün sonuna OOV (Out of Vocabulary) yani cümleler de
# bulunmayan kelimeleri temsil etmek amaçlı bir anahtar-değer çitfi eklenecektir. Örneğin sözlüğümüz
# içinde 10 tane anahtar-değer çifti olsun. Bu durumda 11. çift olarak yukarıdaki kurduğunuz sözlük
# yapısına uygun şekilde “OOV” ve 11 eklenecektir.

# Cümleler.txt dosyasındaki bütün cümleler, oluşturulan sözlük kullanılarak vektörleştirilecektir

# Kullanıcıdan girdi olarak alınan bir cümleye karşılık gelen vektörün çıktı verilmesi istenmektedir.



dosya = File.read('cumleler.txt')

ayristirilmis_kelimeler = dosya.split

kelimeler = []
ayristirilmis_kelimeler.each do |e|
    kelimeler << e.downcase
end

sozluk = {}

sayac = 0
kelimeler.each_with_index do |e, i|
    sozluk[:"#{e}"] = i
    sayac = i
end
sozluk[:OVV] = sayac + 1
print "*********************************SOZLUK***********************************\n"
print sozluk



cumleler = []
dosya2 = File.readlines('cumleler.txt')

dosya2.each do |e|
    kucuk = e.downcase
    cumleler << kucuk
end   
print "\n***********************CUMLELERIN VEKTORLESTIRILMIS HALLERI****************************\n"

cumleler.each_with_index do |e, i|
    kelime = e.split
    vektorler = []
    kelime.each do |e|
        vektorler << sozluk[:"#{e}"]
    end
    puts "#{cumleler[i]} -> #{vektorler}"
end

print "Bir cumle giriniz:"
cumle = gets.chomp.force_encoding('iso-8859-1').split

vektorler2 = []
cumle.each do |e|
    if kelimeler.include? "#{e}"
        eleman = sozluk[:"#{e}"]
        vektorler2 << eleman
    else 
        eleman = sozluk[:OVV]
        vektorler2 << eleman
    end
end
print "*************************GİRİLEN CUMLENIN VEKTORLESTIRILMIS HALI********************************\n"
print vektorler2