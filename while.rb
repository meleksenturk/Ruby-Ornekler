# x = 1 + 1 / 1 + 1 / 1...   ifadesinin ilk on terimini hesaplayınız.


i = 1 
ilk_terim = 1
yeni_terim = 0
puts "1. terim : 1"
while i < 10
    yeni_terim = 1.0 / (ilk_terim).to_f + 1.0
    
    puts "#{i + 1}. terim : #{yeni_terim}"
    ilk_terim = yeni_terim
    i += 1
end
