class StringCalculator
  
  def add(string_numbers)
    raise "Only string value is allowed in StringCalculator#add method parameter" unless string_numbers.is_a?(String)

    return 0 if string_numbers == ""

    numbers = digits(string_numbers)
    numbers.sum
  end

  private
  
  def digits(s_numbers)
    s_numbers.gsub("\n",delimiter).split(delimiter).map(&:to_i)
  end

  def delimiter
    ","
  end
end