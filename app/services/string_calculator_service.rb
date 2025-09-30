# app/services/string_calculator_service.rb
class StringCalculatorService
  def addition(string)
    if string.blank?
      0
    else
      integer_numbers = string.split(/,|\n|;/).map(&:to_i)

      negative_numbers = []
      integer_numbers.each do |num|
        if num < 0
          negative_numbers << num
        end
      end

      if negative_numbers.length > 0
        raise "Negative numbers are not allowed: #{negative_numbers.join(', ')}"
      else
        integer_numbers.sum
      end
    end
  end
end
