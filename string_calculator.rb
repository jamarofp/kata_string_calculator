class StringCalculator
  def Add(string_of_values)
    if !(/-\d/.match(string_of_values))

    string_of_values = string_of_values.gsub(/\D/,",").gsub(/,{2,}/,"")

    array_of_values = string_of_values.split(",")
p array_of_values.to_s
    if array_of_values.length < 3
      array_of_values.inject(0) { |sum, num| sum+num.to_i }
    else
      "Error: Arguments"
    end
  end
end
end
