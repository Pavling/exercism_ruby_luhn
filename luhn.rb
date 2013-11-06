class Luhn
  def initialize(number)
    @number = number
  end

  def addends
    @number.to_s.reverse.chars.each_with_index.map do |char, index|
      lunh_transform(char.to_i, index)
    end.reverse
  end

  private
  def lunh_transform(digit, index)
    index % 2 == 0 ? digit : doubled_digit_transform(digit)
  end

  private
  def doubled_digit_transform(digit)
    (digit = digit * 2) > 10 ? digit - 9 : digit
  end

end