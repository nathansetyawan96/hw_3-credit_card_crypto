module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i)
    sum = 0
    # TODO: use the integers in nums_a to validate its last check digit
    nums_a.reverse.map.with_index do |digit, index|
      if(index.odd?)
        temp = digit * 2
        sum += (temp>=10) ? temp - 9 : temp
      else 
        sum += digit
      end
    end

    return sum.modulo(10).zero?
  end 
end
