class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    "#{quantity(number).capitalize} #{container(number)} of beer on the wall, " \
    "#{quantity(number)} #{container(number)} of beer.\n" \
    "#{action(number)}, " \
    "#{quantity(successor(number))} #{container(successor(number))} of beer on the wall.\n"
  end

  def container(number)
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end

  def pronoum(number)
    if number == 1
      'it'
    else
      'one'
    end
  end

  def quantity(number)
    if number.zero?
      'no more'
    else
      number.to_s
    end
  end

  def action(number)
    if number.zero?
      'Go to the store and buy some more'
    else
      "Take #{pronoum(number)} down and pass it around"
    end
  end

  def successor(number)
    if number.zero?
      99
    else
      number - 1
    end
  end
end
