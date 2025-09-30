# app/services/string_calculator_service.rb
class StringCalculatorService
  def addition(string)
    if string.blank?
      0
    else
      split_numbers = string.split(/,|\n|;/)

      integer_numbers = []
      split_numbers.each do |num_str|
        integer_numbers << num_str.to_i
      end

      negative_numbers = []
      integer_numbers.each do |num|
        if num < 0
          negative_numbers << num
        end
      end

      if negative_numbers.length > 0
        raise "Negative numbers are not allowed: #{negative_numbers.join(', ')}"
      end

      sum = 0
      integer_numbers.each do |num|
        sum += num
      end

      sum
    end
  end
end
