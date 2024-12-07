class StringCalculator
  
  def add(string_numbers)
    raise "Only string value is allowed in StringCalculator#add method parameter" unless string_numbers.is_a?(String)

    return 0 if string_numbers == ""
    
    if string_numbers.include?("\n")
      string_numbers = string_numbers.gsub("\n",",")
    end

    numbers = string_numbers.split(",").map(&:to_i)
    numbers.sum
  end

end