class HastaneIlac
    @@toplamIlacSayisi = 0
    attr_reader :barkodNumarasi, :ilacAdi, :ilacTuru, :ureticiFirma, :stokSayisi, :aitOlduguBirim

   def initialize(barkodNumarasi, ilacAdi, ilacTuru, ureticiFirma, stokSayisi, aitOlduguBirim)

        @@toplamIlacSayisi += stokSayisi

        @barkodNumarasi = barkodNumarasi
        @ilacAdi = ilacAdi
        @ilacTuru = ilacTuru
        @ureticiFirma = ureticiFirma
        @stokSayisi = stokSayisi
        @aitOlduguBirim = aitOlduguBirim
   
   end

   def self.toplamIlacSayisi
        @@toplamIlacSayisi
   end
end


def dongu
     ilaclar = []  #olusturulan ilac nesnelerini kaydetmek icin.

     while(true)
     
         menu ="\n1-Ekle
              \n2-Listele
              \n3-Cikis"

         puts "\n-------MENU-------"
         puts "#{menu}"    
         puts "\n------------------"

         print "\nBir islem seciniz:"
         islem = gets.chomp.to_i
         puts "--------------------"

         if islem == 1

              print "Ilacin barkod numarasini giriniz :"
              barkodNumarasi = gets.chomp.to_i

              print "Ilac adi giriniz : "
              ilacAdi = gets.chomp

              print "Ilac turu giriniz : "
              ilacTuru = gets.chomp

              print "Ilacin uretici firmasini giriniz :"
              ureticiFirma = gets.chomp

              print "Ilacın stok sayisini giriniz :"
              stokSayisi = gets.chomp.to_i

              print "Ilacin ait oldugu birimi giriniz :"
              aitOlduguBirim = gets.chomp
              puts "--------------------------------------"

              ilac = HastaneIlac.new(barkodNumarasi, ilacAdi, ilacTuru, ureticiFirma, stokSayisi, aitOlduguBirim)            
              ilaclar.push(ilac)
             
         elsif islem == 2
             
             
              ilaclar.each do |nesne|

                   puts "Ilacin Barkod Numarasi : #{nesne.barkodNumarasi}"
                   puts "Ilacin Adi : #{nesne.ilacAdi}"
                   puts "Ilacin Turu : #{nesne.ilacTuru}"
                   puts "Ilacin Uretici Firmasi : #{nesne.ureticiFirma}"
                   puts "Ilacin Stok Sayisi : #{nesne.stokSayisi}"
                   puts "Ilacin Ait Oldugu Birim : #{nesne.aitOlduguBirim}"

                   puts "------------------------------------"
              end

              puts "Toplam ilac sayisi : #{HastaneIlac.toplamIlacSayisi}"

         elsif islem == 3
              puts "Gule gule"
              break

         else
              puts "Hatali bir komut girdiniz."
         end
     end
end


def main

   puts "Ondokuz Mayıs Universitesi Tıp Fakultesi Hastane Bilgi Sistemine Hos Geldiniz"

   dongu
  
   
end

main