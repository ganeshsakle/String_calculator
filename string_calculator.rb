class StringCalculator
  def add(numbers)
    delimiters = [","]
    if numbers.start_with?("//")
      delimiters = numbers.scan(/\[([^\]]+)\]/).flatten
      numbers = numbers.split("\n", 2)[1]
    end

    negative_numbers = []
    sum = 0
    numbers.split(Regexp.union(delimiters + ["\n"])) do |number|
      curr_number = number.to_i
      if curr_number < 0
        negative_numbers << curr_number
      elsif curr_number <= 1000
        sum += curr_number
      end
    end

    if negative_numbers.any?
      raise "negative numbers not allowed #{negative_numbers.join(', ')}"
    end
    sum
  end
end
