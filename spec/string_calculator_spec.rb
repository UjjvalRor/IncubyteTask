require "string_calculator"

describe StringCalculator do

  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context "given 1" do
      it "returns 1" do
        expect(StringCalculator.add("1")).to eq(1)
      end
    end

    context "given 1,5" do
      it "returns 6" do
        expect(StringCalculator.add("1,5")).to eq(6)
      end
    end
  end
end
