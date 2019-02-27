module ShiftsMod
  def a_shift(char, date_shift, direction)
    return "" if char == nil
    key_shift = "#{key[0]}#{key[1]}"
    date_shift = "#{date_shift[-4]}"
    total_shift = (key_shift.to_i + date_shift.to_i) % 27
    whole_range = ("a".."z").to_a << " "
    case
    when direction == "forward"
      index = whole_range.index(char)
      range = whole_range.rotate(index)
      range[total_shift]
    when direction == "backward"
      index = whole_range.index(char)
      range = whole_range.rotate(index)
      range[total_shift - total_shift*2]
    end
  end
  def b_shift(char, date_shift, direction)
    return "" if char == nil
    key_shift = "#{key[1]}#{key[2]}"
    date_shift = "#{date_shift[-3]}"
    total_shift = (key_shift.to_i + date_shift.to_i) % 27
    whole_range = ("a".."z").to_a << " "
    case
    when direction == "forward"
      index = whole_range.index(char)
      range = whole_range.rotate(index)
      range[total_shift]
    when direction == "backward"
      index = whole_range.index(char)
      range = whole_range.rotate(index)
      range[total_shift - total_shift*2]
    end
  end
  def c_shift(char, date_shift, direction)
    return "" if char == nil
    key_shift = "#{key[2]}#{key[3]}"
    date_shift = "#{date_shift[-2]}"
    total_shift = (key_shift.to_i + date_shift.to_i) % 27
    whole_range = ("a".."z").to_a << " "
    case
    when direction == "forward"
      index = whole_range.index(char)
      range = whole_range.rotate(index)
      range[total_shift]
    when direction == "backward"
      index = whole_range.index(char)
      range = whole_range.rotate(index)
      range[total_shift - total_shift*2]
    end
  end
  def d_shift(char, date_shift, direction)
    return "" if char == nil
    key_shift = "#{key[3]}#{key[4]}"
    date_shift = "#{date_shift[-1]}"
    total_shift = (key_shift.to_i + date_shift.to_i) % 27
    whole_range = ("a".."z").to_a << " "
    case
    when direction == "forward"
      index = whole_range.index(char)
      range = whole_range.rotate(index)
      range[total_shift]
    when direction == "backward"
      index = whole_range.index(char)
      range = whole_range.rotate(index)
      range[total_shift - total_shift*2]
    end
  end
end
