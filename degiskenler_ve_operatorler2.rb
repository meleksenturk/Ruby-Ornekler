# Klavyeden aynı anda d1 doğrusu için a, b ve c değerlerini alacak ardından d2 doğrusu için c
# değerini alacak son olarak uzaklık bilgisini hesap edip ekrana basacak programı yazınız.




print "Birinci dogruya ait bilgileri giriniz :"
a1 = gets.chomp.to_i ; b1 = gets.chomp.to_i ; c1 = gets.chomp.to_i

puts "\nIlk dogruya ait bilgiler : a1 = #{a1} , b1 = #{b1} , c1 = #{c1} "

print "\nIkinci dogru icin c2 bilgisini giriniz :"
c2 = gets.chomp.to_i

puts "\nIkinci dogruya ait bilgiler : a2 = #{a1} , b2 = #{b1} , c2 = #{c2}"

uzaklik = (c1 - c2).abs / Math.sqrt(a1**2 + b1**2)
puts "\nDogrular arasindaki uzaklik : #{uzaklik}"