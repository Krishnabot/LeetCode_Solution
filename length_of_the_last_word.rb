#using Inbuilt functions
def length_of_last_word(s)
  # Split the string into an array
  words = s.split
  
  # Return length of the last word
  words.last.length
end