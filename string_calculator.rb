class StringCalculator
  def add(number)
    number_in_int = number.to_i
    return "negative numbers not allowed #{number_in_int}" if number_in_int < 0

    number_length = number.length
    return number.to_i if number_length == 1 || number_length == 0

    sum = 0

    for i in 0...number_length do
      sum += number[i].to_i
    end

    return sum
  end
end

