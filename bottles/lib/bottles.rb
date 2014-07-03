# Feel free to delete the instructions once you get going
# puts instructions(__FILE__)

class Bottles
  def verse(bottle_number)
    current_bottle_number = bottle_number
    next_bottle_number = next_bottle_number(current_bottle_number)
     "#{quantity(current_bottle_number)} #{container(current_bottle_number)} of beer on the wall, #{quantity(current_bottle_number)} #{container(current_bottle_number)} of beer.\n".capitalize+
     "#{action(current_bottle_number)}, #{quantity(next_bottle_number)} #{container(next_bottle_number)} of beer on the wall.\n"
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

  end

  private

  def container(bottle_number)
    BottleNumber.new(bottle_number).container
  end

  def pronoun(bottle_number)
    if bottle_number == 1 
      "it"
    else
      "one"
    end
  end

  def quantity(bottle_number)
    if bottle_number == 0 
      "no more"
    else
      bottle_number
    end
  end

  def next_bottle_number(bottle_number)
    if bottle_number == 0
      99
    else
      bottle_number - 1
    end
  end

  def action(bottle_number)
    if bottle_number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(bottle_number)} down and pass it around"
    end
  end
end
