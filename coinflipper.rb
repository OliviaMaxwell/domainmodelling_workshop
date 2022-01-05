require_relative 'coin'

class CoinFlipper

  def initialize()
    @count_heads = 0
    @count_tails = 0
  end

  def play()
    coin = Coin.new()
    result = coin.flip()

    if result == 'heads'
      @count_heads += 1
    elsif result == 'tails'
      @count_tails += 1
    end
  end

  def print_score()
    puts "Heads: #{@count_heads}"
    puts "Tails: #{@count_tails}"

    if @count_heads > @count_tails
      puts "Head has won!"
    elsif @count_heads < @count_tails
      puts "Tail has won!"
    else
      puts "It's a draw!"
    end
  end

end

game = CoinFlipper.new()
10.times { game.play() }
game.print_score()

