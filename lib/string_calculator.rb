class StringCalculator

  def self.add(string)
    delimeter = string.split("//").last.split.first if string.start_with?("//")
    if delimeter
      string.split("#{delimeter}\n").last.split("#{delimeter}").map(&:to_i).sum
    else
      string.split(/delimeter|\n|\,/).map(&:to_i).sum
    end
  end

end
