# app/services/string_calculator_service.rb
class StringCalculatorService
  def addition(string)
    if string.blank?
      0
    else
      string.to_i
    end
  end
end
