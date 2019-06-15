class Roulette
    def play(bet)
        @r = (1..10).to_a
        @bet = bet
        (@bet == @r)? winner : historial
    end

    def winner
        puts "has ganado"
    end

    def loser
        puts "has perdido"
    end

    def historial
        puts "Se agregara el numero #{@r} de la ruleta"
        file = File.open
    end

end