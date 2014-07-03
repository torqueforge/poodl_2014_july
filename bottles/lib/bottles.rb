# Feel free to delete the instructions once you get going
puts instructions(__FILE__)

class Bottles
  def song
    verses(99,0)
  end
 
  def verses(upper, lower)
    upper.downto(lower).map { |bottle_number| verse(bottle_number) }.join("\n")
  end
 
  def verse(bottle_number)
    current_bottle_number = bottle_number
    next_bottle_number = current_bottle_number - 1
    case current_bottle_number
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n" 
    else
      "#{current_bottle_number} bottles of beer on the wall, #{current_bottle_number} bottles of beer.\nTake one down and pass it around, #{next_bottle_number} bottles of beer on the wall.\n"
    end
  end

end
