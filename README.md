### Inspiration: https://osherove.com/tdd-kata-1/

# String Calculator TDD Kata

## Program Definition
The **String Calculator** is a simple Ruby program designed to demonstrate Test-Driven Development (TDD) principles. It calculates the sum of numbers provided in a string format. This project includes handling edge cases, custom delimiters, and error reporting for negative numbers.

### Features
1. **Empty String:** Returns `0`.  
   Example:  
   Input: `""`  
   Output: `0`

2. **Single Number:** Returns the number itself.  
   Example:  
   Input: `"1"`  
   Output: `1`

3. **Two Numbers:** Returns the sum of the two numbers.  
   Example:  
   Input: `"1,5"`  
   Output: `6`

4. **Multiple Numbers:** Calculates the sum of an arbitrary number of numbers.  
   Example:  
   Input: `"1,2,3"`  
   Output: `6`

5. **New Line as Delimiter:** Handles `\n` as an additional delimiter.  
   Example:  
   Input: `"1\n2,3"`  
   Output: `6`

6. **Custom Delimiters:** Supports custom delimiters specified at the beginning of the string in the format `//[delimiter]\n`.  
   Example:  
   Input: `"//;\n1;2"`  
   Output: `3`

7. **Negative Numbers:** Throws an exception when negative numbers are provided, listing all negatives in the message.  
   Example:  
   Input: `"1,-2,-3"`  
   Output: `Exception: Negative numbers not allowed: -2, -3`

---

## Installation

1. **Clone the Repository:**
   ```bash
   git clone git@github.com:sonianand11/string_calculator_tdd.git
   cd string_calculator_tdd
   ```

2. **Install Dependencies:**
   Ensure you have `bundler` installed:
   ```bash
   gem install bundler
   ```
   Then install required gems:
   ```bash
   bundle install
   ```

---

## How to Run the Program

### Running the Code
You can run the program directly using an interactive Ruby session (IRB) or by creating a script:
1. Open an IRB session:
   ```bash
   irb
   ```
2. Load the calculator:
   ```ruby
   require './string_calculator'
   calculator = StringCalculator.new
   puts calculator.add("1,2,3") # Example usage
   ```

---

### Running Tests
The program uses **RSpec** for testing. To run the tests:
1. Execute the RSpec command:
   ```bash
   rspec spec
   ```

2. You should see output indicating all tests have passed.

---

## Example Usage
Here are some examples demonstrating the calculator’s functionality:

```ruby
require './lib/string_calculator'

calculator = StringCalculator.new

puts calculator.add(1)             # Output: Raise error Only string value is allowed in StringCalculator#add method parameter
puts calculator.add("")            # Output: 0
puts calculator.add("1")           # Output: 1
puts calculator.add("1,5")         # Output: 6
puts calculator.add("1\n2,3")      # Output: 6
puts calculator.add("//;\n1;2")    # Output: 3
puts calculator.add("//;\n1;2;-4") # Output: Raise error Negative numbers not allowed: -4
```

---

## Project Structure
```
string-calculator-tdd/
|-- lib/
|   |-- string_calculator.rb      # Main program logic
|-- spec/
|   |-- string_calculator_spec.rb # Test cases
|-- Gemfile                       # Dependencies
|-- README.md                     # Documentation
```