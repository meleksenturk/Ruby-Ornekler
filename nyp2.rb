require 'forwardable'

class Vertebrates

    def eat
       "eating."
    end

    def drink
       "drinking"
    end

    def sleep
        "sleeping."
    end
end


class Move
    def crawl
        puts "The crocodile is crawling."
    end

    def step
        puts "The human is walking."
    end

    def fly
        puts "The bird is flying."
    end
end



class Human < Vertebrates
    extend Forwardable
    def_delegators :@move, :step

    def initialize
        @move = Move.new
    end

    def eat
        puts "The human is #{super}"
    end
     
    def drink
        puts "The human is #{super}"
    end

    def sleep
        puts "The human is #{super}" 
    end


    # def step
    #     @move.step          If we didn't use delegation we would write like this
    # end
    
end

class Crocodile < Vertebrates
    extend Forwardable
    def_delegators :@move, :crawl

    def initialize
        @move = Move.new
    end

    def eat
        puts "The crocodile is #{super}"
    end

    def drink
        puts "The crocodile is #{super}"
    end

    def sleep
        puts "The crocodile is #{super}"
    end

    # def crawl
    #     @move.crawl          If we didn't use delegation we would write like this
    # end
end


class Bird < Vertebrates
    extend Forwardable
    def_delegators :@move, :fly

    def initialize
        @move = Move.new
    end

    def eat
        puts "The bird is #{super}"
    end

    def drink
        puts "The bird is #{super}"
    end

    def sleep
    
        puts "The bird is #{super}"
    end
    
    # def fly
    #     @move.fly            If we didn't use delegation we would write like this
    # end
end

def main
    
    human = Human.new
    human.eat
    human.drink
    human.sleep
    human.step

    puts "****************************"

    crocodile = Crocodile.new
    crocodile.eat
    crocodile.drink
    crocodile.sleep
    crocodile.crawl
    
    puts "****************************"

    bird = Bird.new
    bird.eat
    bird.drink
    bird.sleep
    bird.fly


    # human.fly          The human hasn't a fly metod and this line gives an error.
    # crocodile.step     The crocodile hasn't step metod and this line gives an error.
    # bird.crawl         The bird hasn't crawl metod and this line gives an error.

end

main

