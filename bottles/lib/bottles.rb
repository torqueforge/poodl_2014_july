# Feel free to delete the instructions once you get going
# puts instructions(__FILE__)



class Bottles
  def verse(bottle_number)
    current_bottle = BottleNumber.new(bottle_number)
    next_bottle = BottleNumber.new(current_bottle.next_bottle_number)
     "#{current_bottle.quantity} #{current_bottle.container} of beer on the wall, #{current_bottle.quantity} #{current_bottle.container} of beer.\n".capitalize+
     "#{current_bottle.action}, #{next_bottle.quantity} #{next_bottle.container} of beer on the wall.\n"
  end

  def verses(upper, lower)
    upper.downto(lower).map { |n| verse(n) }.join("\n")
  end

  def song
    verses(99,0)
  end

  class BottleNumber

    attr_reader :number
    private :number

    def initialize(number)
      @number = number
    end

    def container
      if number == 1
        "bottle"
      else
        "bottles"
      end
    end

    def pronoun
      if number == 1
        "it"
      else
        "one"
      end
    end

    def quantity
      if number == 0
        "no more"
      else
        number
      end
    end


    def next_bottle_number
      if number == 0
        99
      else
        number - 1
      end
    end

    def action
      if number == 0
        "Go to the store and buy some more"
      else
        "Take #{pronoun} down and pass it around"
      end
    end

  end
end

