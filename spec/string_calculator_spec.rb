require_relative "../string_calculator"

RSpec.describe StringCalculator do
  let(:calculator) {StringCalculator.new}

  describe "#add" do
    it "return 0 for an empty string" do
      expect(calculator.add("")).to eq(0)
    end
    
    it "returns the number itself for a single number" do
      expect(calculator.add("1")).to eq(1)
    end

    it "returns the sum of two numbers" do
      expect(calculator.add("1,5")).to eq(6)
    end

    it "raises an exception for wrong parameters" do
      expect { calculator.add(1) }.to raise_error("Only string value is allowed in StringCalculator#add method parameter")
    end

    it "returns the sum of multiple numbers" do
      expect(calculator.add("1,2,3,4")).to eq(10)
    end

    it "handles new lines as delimiters" do
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it "supports custom delimiters" do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

  end

end