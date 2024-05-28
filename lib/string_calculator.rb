class StringCalculator

  def self.add(string)
    #Check if delimiter is present
    delimiter = string.split("//").last.split("\n").first.gsub(/\[|\]/, '') if string.start_with?("//")

    # Find array of string for sum
    if delimiter
      string_arr = string.split("\n").last.split("#{delimiter}")
    else
      string_arr = string.split(/\n|\,/)
    end

    negative_numbers = string_arr.select { |num| num.to_i.negative? }.join(',')
    unless negative_numbers.empty?
      # Return with exception message if there are negative numbers

      "negative numbers not allowed #{negative_numbers}"
    else
      # Change array of string to integer's array and then sum up
      string_arr.map(&:to_i).sum
    end
  end
end
