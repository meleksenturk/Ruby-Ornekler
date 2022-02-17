class Sekil
    @x
    @y 
    
    def initialize
        raise NotImplementedError
    end

    def ekrandaGoster
        raise NotImplementedError
    end

    def bilgi
        raise NotImplementedError
    end

    def alan
        raise NotImplementedError
    end

    def hacim
        raise NotImplementedError
    end
    
    class << self
        attr_accessor :x, :y
    end


end

class IkiBoyutlu < Sekil
    
    def initialize
        raise NotImplementedError
    end

end

class UcBoyutlu < IkiBoyutlu
    @z
    def initialize
        raise NotImplementedError
    end

    class << self
        attr_accessor :z
    end

end


class Kare < IkiBoyutlu

    attr_reader :kenar
    def initialize(kenar = 0)
        @kenar = kenar
    end
    def ekrandaGoster(x,y)
        puts "Karenin merkez x koordinatı : #{x}"
        puts "Karenin merkez y koordinatı : #{y}"

    end
    def bilgi
        puts "Karenin kenar uzunlugu : #{kenar}"
        puts "Karenin alani : #{alan}"
    end

    def alan
        kenar*kenar
    end

end

class Daire < IkiBoyutlu

    attr_reader :yaricap
    def initialize(yaricap)
        @yaricap = yaricap
    end
    def ekrandaGoster(x,y)
        puts "Dairenin merkez x koordinatı : #{x}"
        puts "Dairenin merkez y koordinatı : #{y}"

    end
    def bilgi
        puts "Dairenin yaricap uzunlugu : #{yaricap}"
        puts "Dairenin alani : #{alan}"
    end

    def alan
        (Math::PI) * (yaricap ** 2)
    end

end

class Kup < UcBoyutlu

    attr_reader :kenar, :hacimArttırma
    def initialize(kenar, hacimArttırma)
        @kenar = kenar
        @hacimArttırma = hacimArttırma
    end
    def ekrandaGoster(x,y,z)
        puts "Kubun merkez x koordinatı : #{x}"
        puts "Kubun merkez y koordinatı : #{y}"
        puts "Kurenin merkez z koordinatı : #{z}"

    end
    def bilgi
        puts "Kubun kenar uzunlugu : #{kenar}"
        puts "Kubun alani : #{alan}"
        puts "Kubun hacmi : #{hacim}"
        if hacimArttırma != 0
            puts "Yeni hacim : #{yeniHacim}"
        end
    end

    def alan
        kenar*kenar*6
    end

    def hacim 
        kenar*kenar*kenar
    end

    def yeniHacim
        if hacimArttırma != 0
            yeniHacim = hacim * hacimArttırma
        end
    end

end


class Kure < UcBoyutlu
    
    attr_reader :yaricap, :hacimArttırma
    def initialize(yaricap, hacimArttırma)
        @yaricap = yaricap
        @hacimArttırma = hacimArttırma
        
    end

    def ekrandaGoster(x,y,z)
        puts "Kurenin merkez x koordinatı : #{x}"
        puts "Kurenin merkez y koordinatı : #{y}"
        puts "Kurenin merkez z koordinatı : #{z}"

    end

    def bilgi

        puts "Kurenin yaricapi : #{yaricap}"
        puts "Kurenin alani : #{alan}"
        puts "Kurenin hacmi : #{hacim}"

        if hacimArttırma != 0
            puts "Yeni hacim : #{yeniHacim}"
        end
    end

    def alan
        4*(Math::PI) * (yaricap*yaricap)
    end

    def hacim
        (4/3)*(Math::PI) * (yaricap*yaricap*yaricap)
    end

    def yeniHacim
        hacim*hacimArttırma
    end

end

def prompt (*args)
    print(*args)
    gets.chomp.to_i
end

def islemler

    while true
        puts "-------------------------"

        islem = prompt 'Bir islem seciniz : '
        if islem == 1
            x = prompt 'Karenin merkez x koordinatını giriniz : '
            Kare.x = x
    
            y = prompt 'Karenin merkez y koordinatını giriniz : '
            Kare.y = y
            
            kenar = prompt 'Karenin kenar uzunlugunu giriniz:'

            kare = Kare.new(kenar)
            puts "-------------------------------------"
            puts "Iki boyutlu kare sekli olusturuldu.."
            puts "-------------------------------------"

            kare.bilgi

            puts "--------Karenin koordinatları-------- "
            kare.ekrandaGoster(x,y)

        elsif islem == 2
            x = prompt 'Dairenin merkez x koordinatını giriniz : '
            Daire.x = x

            y = prompt 'Dairenin merkez y koordinatını giriniz : '
            Daire.y = y

            yaricap = prompt 'Dairenin yaricapini giriniz : '

            daire = Daire.new(yaricap)

            puts "----------------------------------"
            puts "Iki boyutlu daire sekli olusturuldu."
            puts "----------------------------------"

            daire.bilgi

            puts "-----------Dairenin koordinatları----------"
            daire.ekrandaGoster(x,y)

        elsif islem == 3
            
            x =prompt 'Kubun merkez x koordinatını giriniz : '
            Kup.x = x

            y = prompt 'Kubun merkez y koordinatını giriniz : '
            Kup.y = y

            z = prompt 'Kubun merkez z koordinatını giriniz : '
            Kup.z = z

            kenar = prompt 'Kubun kenar uzunlugunu giriniz : '
            hacimArttırma = prompt 'Kubun hacim artis degerini giriniz :'
            

            kup = Kup.new(kenar,hacimArttırma)

            puts "----------------------------------"
            puts "Uc boyutlu daire sekli olusturuldu."
            puts "----------------------------------"

            kup.bilgi
            puts "-----------Kubun koordinatları----------"
            kup.ekrandaGoster(x,y,z)

        elsif islem == 4

            x = prompt 'Kurenin merkez x koordinatını giriniz : '
            Kure.x = x

            y = prompt 'Kurenin merkez y koordinatını giriniz : '
            Kure.y = y

            z = prompt 'Kurenin merkez z koordinatını giriniz : '
            Kure.z = z

            yaricap = prompt  'Kurenin yaricap uzunlugunu giriniz: '
            
            hacimArttırma = prompt 'Kurenin hacim artis degerini giriniz :'

            kure = Kure.new(yaricap,hacimArttırma)

            puts "----------------------------------"
            puts "Uc boyutlu kuresekli olusturuldu."
            puts "----------------------------------"
            kure.bilgi

            puts "-----------Kubun koordinatları----------"
            kure.ekrandaGoster(x,y,z)

        elsif islem == 5
            break
        else
        end
    end
end


def main
    menu = "\t1-Kare\n
        2-Daire \n
        3-Küp \n
        4-Küre \n
        5-Çıkış "
    puts "-------------------------"
    puts menu
    puts "-------------------------"


    islemler

end


main