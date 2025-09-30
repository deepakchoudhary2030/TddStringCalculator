# spec/services/string_calculator_service_spec.rb
require 'rails_helper'
RSpec.describe StringCalculatorService do
  let(:string_calculator) { described_class.new }

  describe "addition" do
    it 'will return zero if the string is empty' do
      expect(string_calculator.addition('')).to eq(0)
    end

    it 'will return one if the string as single input number' do
      expect(string_calculator.addition('1')).to eq(1)
    end

    it 'will return addition of the two comma seperate numbers' do
      expect(string_calculator.addition('3, 4')).to eq(7)
    end

    it 'will return the addition of the multiple comma seperated numbers' do
      expect(string_calculator.addition('3, 5, 7, 1')).to eq(16)
    end

    it 'will return the addition of comma seperate numbers only even if we have \n' do
      expect(string_calculator.addition("1\n2,3")).to eq(6)
    end

    it 'will handles different types of delimiters and return addition' do
      expect(string_calculator.addition("//;\n1;2")).to eq(3)
    end

    it 'will raise an error if we have negative numbers' do
      expect { string_calculator.addition("1, -2, -3, 4") }.to raise_error('Negative numbers are not allowed: -2, -3')
    end
  end
end
