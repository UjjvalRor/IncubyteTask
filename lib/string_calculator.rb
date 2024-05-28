class StringCalculator

  def self.add(string)
    string.split(',').map(&:to_i).sum
  end

end
