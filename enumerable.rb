# verilen metin.txt dosyasını kullanıcının belirleyeceği ilerleme sayısına
# göre şifreleyen istenildiğinde de verilen şifrelenmiş metni orijinale döndüren programı yazınız.



def dosya_okuma
    dosya = File.read('metin.txt')
end

def sifreleme
    alfabe_kucuk = ['a','b' ,'c' , 'd', 'e', 'f', 'g' ,'h' ,'i' ,'j','k' ,'l' ,'m' ,'n' ,'o' ,'p' ,'r' ,'s' ,'t' ,'u' ,'v', 'y' ,'z']
    alfabe_buyuk = ['A','B' ,'C' , 'D', 'E', 'F', 'G' ,'H' ,'I' ,'J','K' ,'L' ,'M' ,'N' ,'O' ,'P' ,'R' ,'S' ,'T' ,'U' ,'V', 'Y' ,'Z']

    metin = dosya_okuma
    ayrıstırılmis_metin = metin.split(//)
    sifrelenmis_metin = ""

    ayrıstırılmis_metin.each do |e|
        if e == 'a' || e == 'b' || e == 'c' || e == 'd' || e == 'e' || e == 'f' || e == 'g' || e == 'h' || e == 'i' || e == 'j' || e == 'k' || e == 'l' || e == 'm' || e ==  'n' || e == 'o' || e == 'p' || e == 'r' || e == 's' || e == 't' || e == 'u' || e == 'v' || e == 'y' || e == 'z' 
            sifrelenmis_metin += alfabe_kucuk[(alfabe_kucuk.index(e) + @ilerleme) % alfabe_kucuk.size]
        elsif e == 'A' || e == 'B' || e == 'C' || e == 'D' || e == 'E' || e == 'F' || e == 'G' || e == 'H' || e == 'I' || e == 'J' || e == 'K' || e == 'L' || e == 'M' || e ==  'N' || e == 'O' || e == 'P' || e == 'R' || e == 'S' || e == 'T' || e == 'U' || e == 'V' || e == 'Y' || e == 'Z'
            sifrelenmis_metin += alfabe_buyuk[(alfabe_buyuk.index(e) + @ilerleme) % alfabe_buyuk.size]
        else
            sifrelenmis_metin += e  
        end
    end
    sifrelenmis_metin


end
def dosya_yazma
    dosya = File.open('sifre.txt', 'w')
    dosya.print(sifreleme)
    dosya2 = File.open('cozulmus_sifre.txt', 'w')
    dosya2.print(sifre_cözme)

end

def sifre_cözme
    alfabe_kucuk = ['a','b' ,'c' , 'd', 'e', 'f', 'g' ,'h' ,'i' ,'j','k' ,'l' ,'m' ,'n' ,'o' ,'p' ,'r' ,'s' ,'t' ,'u' ,'v', 'y' ,'z']
    alfabe_buyuk = ['A','B' ,'C' , 'D', 'E', 'F', 'G' ,'H' ,'I' ,'J','K' ,'L' ,'M' ,'N' ,'O' ,'P' ,'R' ,'S' ,'T' ,'U' ,'V', 'Y' ,'Z']

    sifreli_metin = sifreleme
    ayrıstırılmis_sifreli_metin = sifreli_metin.split(//)
    
    cozulmus_sifre = ""
    ayrıstırılmis_sifreli_metin.each do |e|
        if e == 'a' || e == 'b' || e == 'c' || e == 'd' || e == 'e' || e == 'f' || e == 'g' || e == 'h' || e == 'i' || e == 'j' || e == 'k' || e == 'l' || e == 'm' || e ==  'n' || e == 'o' || e == 'p' || e == 'r' || e == 's' || e == 't' || e == 'u' || e == 'v' || e == 'y' || e == 'z' 
            cozulmus_sifre += alfabe_kucuk[(alfabe_kucuk.index(e) - @ilerleme) % alfabe_kucuk.size]
        elsif e == 'A' || e == 'B' || e == 'C' || e == 'D' || e == 'E' || e == 'F' || e == 'G' || e == 'H' || e == 'I' || e == 'J' || e == 'K' || e == 'L' || e == 'M' || e ==  'N' || e == 'O' || e == 'P' || e == 'R' || e == 'S' || e == 'T' || e == 'U' || e == 'V' || e == 'Y' || e == 'Z'
            cozulmus_sifre += alfabe_buyuk[(alfabe_buyuk.index(e) - @ilerleme) % alfabe_buyuk.size]
        else
            cozulmus_sifre += e  
        end
    end
    cozulmus_sifre

end

print "İlerleme sayisini belirleyiniz : "
@ilerleme = gets.chomp.to_i

sifreleme
sifre_cözme
dosya_yazma


