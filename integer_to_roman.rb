def int_to_roman(num)
    roman_mapping = [
      [1000, "M"],  # Mapping for 1000: "M"
      [900, "CM"],  # Mapping for 900: "CM"
      [500, "D"],   # Mapping for 500: "D"
      [400, "CD"],  # Mapping for 400: "CD"
      [100, "C"],   # Mapping for 100: "C"
      [90, "XC"],   # Mapping for 90: "XC"
      [50, "L"],    # Mapping for 50: "L"
      [40, "XL"],   # Mapping for 40: "XL"
      [10, "X"],    # Mapping for 10: "X"
      [9, "IX"],    # Mapping for 9: "IX"
      [5, "V"],     # Mapping for 5: "V"
      [4, "IV"],    # Mapping for 4: "IV"
      [1, "I"]      # Mapping for 1: "I"
    ]
  
    roman_numeral = ""  # Initialize the resulting Roman numeral string
    roman_mapping.each do |value, symbol|  # Iterate through the mapping
      while num >= value  # Check if the current value can be subtracted from num
        roman_numeral += symbol  # Add the corresponding symbol to the Roman numeral
        num -= value  # Subtract the value from num
      end
    end
  
    return roman_numeral  # Return the resulting Roman numeral string
  end
  