class StringCalculator
  
  def add(string_numbers)
    raise "Only string value is allowed in StringCalculator#add method parameter" unless string_numbers.is_a?(String)

    return 0 if string_numbers == ""

    digits(string_numbers).sum
  end

  private
  
  def digits(s_numbers)
    _delimeter = delimiter(s_numbers)
    s_numbers.gsub("\n",_delimeter).split(_delimeter).map(&:to_i)
  end

  def delimiter(s_numbers)
    s_numbers.start_with?("//") ?  s_numbers[2,1] : ","
  end

end