# https://github.com/alicanteswcraft/kata-string-calculator

require "./string_calculator"

describe "String calculator" do

   context "When testing the String_calculator class" do

      it "There is a method Add?" do
         objCalc = StringCalculator.new
         expected = objCalc.respond_to?("Add")
         expect(expected).to eq true
      end

      it "String passed 0, 1 or 2 elements returns the sum" do
         objCalc = StringCalculator.new

         expected = objCalc.Add("")
         expect(expected).to eq 0

         expected = objCalc.Add("2")
         expect(expected).to eq 2

         expected = objCalc.Add("2,6")
         expect(expected).to eq 8
      end

      it "String with more than 2 elements returns Error" do
         objCalc = StringCalculator.new

         expected = objCalc.Add("2,6,6")
         expect(expected).to eq "Error: Arguments"
      end

      it "String with delimiter definition returns the sum" do
         objCalc = StringCalculator.new

         expected = objCalc.Add(";\n2;6")
         expect(expected).to eq 8

         expected = objCalc.Add(";\n12;16")
         expect(expected).to eq 28

         expected = objCalc.Add("*\n2*6")
         expect(expected).to eq 8

         expected = objCalc.Add("x\n2x6")
         expect(expected).to eq 8

         expected = objCalc.Add(" \n2 6")
         expect(expected).to eq 8

         expected = objCalc.Add("\n\n2\n6")
         expect(expected).to eq 8

         expected = objCalc.Add("-\n8-5")
         expect(expected).to eq 13

         expected = objCalc.Add(";\n8;-5")
         expect(expected).to eq "Error"
      end


   end
end
