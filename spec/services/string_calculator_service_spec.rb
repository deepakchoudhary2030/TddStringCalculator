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
  end
end
