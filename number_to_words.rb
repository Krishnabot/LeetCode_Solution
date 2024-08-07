Define Arrays:
less_than_20: Array of words for numbers 0 to 19.
tens: Array of words for multiples of ten from 10 to 90.
thousands: Array of words for thousand, million, billion.
  

def number_to_words(num)
If num is 0, return “Zero”.
Initialize i to 0 and words to an empty string.
While num is greater than 0:
If num % 1000 is not 0:
Append the result of the helper function for num % 1000 and the corresponding thousands[i] to words.
Divide num by 1000.
Increment i by 1.
Return the trimmed words.
Helper Function (helper):
If num is 0, return an empty string.
If num is less than 20, return the corresponding word from less_than_20.
If num is less than 100, return the corresponding word from tens and recursively call helper for the remainder.
Otherwise, return the word for the hundreds place and recursively call helper for the remainder.
