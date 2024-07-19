#Attempt 1

def letter_combinations_1(digits)
  return [] if digits.empty?

  digit_to_letter_map = {
    '2' => 'abc',
    '3' => 'def',
    '4' => 'ghi',
    '5' => 'jkl',
    '6' => 'mno',
    '7' => 'pqrs',
    '8' => 'tuv',
    '9' => 'wxyz'
  }

  queue = ['']

  digits.each_char do |digit|
    next if digit == '1' 

    queue.size.times do
      prefix = queue.shift
      digit_to_letter_map[digit].each_char do |letter|
        queue << prefix + letter
      end
    end
  end

  queue
end

# p letter_combinations_1("23") # Output: ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]

#Attempt 2



def letter_combinations_2(digits)
  return [] if digits.empty?
  mapping = {
    '2' => 'abc',
    '3' => 'def',
    '4' => 'ghi',
    '5' => 'jkl',
    '6' => 'mno',
    '7' => 'pqrs',
    '8' => 'tuv',
    '9' => 'wxyz'
  }
  result = ['']

  digits.each_char do |digit|
    next if digit == '1' 

    new_result = []
    result.each do |prefix|
      mapping[digit].each_char do |letter|
        new_result << prefix + letter
      end
    end
    result = new_result
  end

  result
end
p letter_combinations_2("23") # Output: ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]




