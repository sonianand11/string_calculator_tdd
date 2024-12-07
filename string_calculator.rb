class StringCalculator
  
  def add(string_numbers)
    raise "Only string value is allowed in StringCalculator#add method parameter" unless string_numbers.is_a?(String)

    return 0 if string_numbers == ""

    _numbers = digits(string_numbers)

    check_for_negative(_numbers)

    _numbers.sum
  end

  private
  
  def check_for_negative(s_numbers)
    # Check for negatives
    negatives = negatives(s_numbers)
    raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
  end

  def negatives(s_numbers)
    s_numbers.select { |num| num < 0 }
  end

  def digits(s_numbers)
    _delimeter = delimiter(s_numbers)
    s_numbers.gsub("\n",_delimeter).split(_delimeter).map(&:to_i)
  end

  def delimiter(s_numbers)
    s_numbers.start_with?("//") ?  s_numbers[2,1] : ","
  end

end