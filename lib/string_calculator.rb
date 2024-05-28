class StringCalculator

  def self.add(string)
    string.split(/\n|\,/).map(&:to_i).sum
  end

end
