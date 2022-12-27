#Game Blackjack @Einarssini

module Rules

    def dealerHand(deck)
        d1=self.randomPick
        d2=self.randomPick
        while d1==d2
            d2=self.randomPick
        end
        return hand = [deck[d1],deck[d2]]
    end

    def randomPick
        return rand(0..51)
    end


    def playerHand(deck)
        r1=self.randomPick
        r2=self.randomPick
        
        while(r1==r2)
            r2 = self.randomPick
        end
        
        return hand = [deck[r1],deck[r2]]


    end
    
    def pedir(deck)

        return deck[self.randomPick]

    end
    
    def identify
        
        File.foreach('Deck.txt') do |line|
            puts line
        end

    end

    def menu
        puts "Doblar [1]\tSeparar [2]\tRendirse [3]\tAsegurar [4]"
        opP = gets.chomp.to_i
        if opP == 1

        end
        if opP == 2

        end
        if opP == 3 

        end
        if opP == 4

        end




    end
end

include Rules

#Deck array of document Deck.txt for each line is a element [0-51]
ddeck = File.readlines('Deck.txt')
#puts Deck

    #Rules.identify
    puts "Comenzar partida \n[SI] \n[NO]"
    op = gets.chomp
    if op == "SI"
        puts "Repartiendo cartas"
        puts "." * 20
    
        handP = Rules.playerHand(ddeck)
        puts "Tu mano: ", handP
        handD = Rules.dealerHand(ddeck)
        while(handP==handD)
            handD = Rules.dealerHand(ddeck)
        end
        puts "Cartas de la casa", handD[0],"🂠"

        puts "Pedir carta [1]"
        opp = gets.chomp.to_i
        if opp == 1
            sol = Rules.pedir(ddeck)
            while(sol == handP[0] || sol == handP[1])
                sol = Rules.pedir(ddeck)
            end
            puts handP,sol
        end
    else
        puts "OK"
    end
