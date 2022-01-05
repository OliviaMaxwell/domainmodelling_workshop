require_relative 'randomizer'

class Coin

  def flip()
    rand = Randomizer.new()
    result = rand.random()

    if result == 1
      return 'tails'
    elsif result == 2
      return 'heads'
    end

  end

end
