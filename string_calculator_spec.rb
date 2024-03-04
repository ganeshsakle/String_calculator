require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe "#add" do
    it "returns a zero when string is empty" do
      greeting = StringCalculator.new
      expect(greeting.add("")).to eq(0)
    end

    it "returns a 1 when string is 1" do
      greeting = StringCalculator.new
      expect(greeting.add("1")).to eq(1)
    end

    it "returns a 6 when string is '1,5'" do
      greeting = StringCalculator.new
      expect(greeting.add("1,5")).to eq(6)
    end

    it "returns a 10 when string is '1\n,9'" do
      greeting = StringCalculator.new
      expect(greeting.add("1\n,9")).to eq(10)
    end
  end
end