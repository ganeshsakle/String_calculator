class StringCalculator
  def add(number)
    number_in_int = number.to_i
    puts "negative numbers not allowed #{number_in_int}" if number_in_int < 0
    number_length = number.length
    puts number.to_i if number_length == 1 || number_length == 0

    sum = 0

    for i in 0...number_length do
      sum += number[i].to_i
    end

    puts sum
  end
end

s1 = StringCalculator.new
s1.add("")

s2 = StringCalculator.new
s2.add("1")

s3 = StringCalculator.new
s3.add("1,5")

s4 = StringCalculator.new
s4.add("1\n,5")

s5 = StringCalculator.new
s5.add("1\n3,5")

s6 = StringCalculator.new
s6.add("1,\n")

s7 = StringCalculator.new
s7.add("//[*][%]\n1*2%3")
