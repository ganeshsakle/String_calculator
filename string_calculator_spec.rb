require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe "#add" do
    it "returns a zero when string is empty" do
      string_calculator = StringCalculator.new
      expect(string_calculator.add("")).to eq(0)
    end

    it "returns a 1 when string is 1" do
      string_calculator = StringCalculator.new
      expect(string_calculator.add("1")).to eq(1)
    end

    it "returns a 6 when string is '1,5'" do
      string_calculator = StringCalculator.new
      expect(string_calculator.add("1,5")).to eq(6)
    end

    it "returns a 10 when string is '1\n,9'" do
      string_calculator = StringCalculator.new
      expect(string_calculator.add("1\n,9")).to eq(10)
    end

    it "returns a 9 when string is '1\n3,5'" do
      string_calculator = StringCalculator.new
      expect(string_calculator.add("1\n3,5")).to eq(9)
    end

    it "returns a 1 when string is '1,\n'" do
      string_calculator = StringCalculator.new
      expect(string_calculator.add("1,\n")).to eq(1)
    end

    it "returns a 10 when string is '1\n,9'" do
      string_calculator = StringCalculator.new
      expect(string_calculator.add("1\n,9")).to eq(10)
    end

    it "returns a 6 when string is '//[**][%%]\n1**2%%3'" do
      string_calculator = StringCalculator.new
      expect(string_calculator.add("//[**][%%]\n1**2%%3")).to eq(6)
    end

    it "returns a 7 when string is '//[***]\n2***2***3'" do
      string_calculator = StringCalculator.new
      expect(string_calculator.add("//[***]\n2***2***3")).to eq(7)
    end

    it "Ignore the number greater than '1,10001,2'" do
      string_calculator = StringCalculator.new
      expect(string_calculator.add("1,10001,2")).to eq(3)
    end

    it "raise negative numbers not allowed '-1,10001,2'" do
      string_calculator = StringCalculator.new
      expect { string_calculator.add("-1,10001,2") }.to raise_error(RuntimeError, "negative numbers not allowed -1")
    end

    it "raise negative numbers not allowed '-1,10001,-2'" do
      string_calculator = StringCalculator.new
      expect { string_calculator.add("-1,10001,-2") }.to raise_error(RuntimeError, "negative numbers not allowed -1, -2")
    end
  end
end