# @param {String} s
# @param {String[]} words
# @return {Integer[]}
def find_substring(s, words)
  return [] if s.empty? || words.empty?

  word_length = words[0].length
  total_length = word_length * words.length
  word_count = words.tally
  result = []

  (0..s.length - total_length).each do |i|
    seen = {}
    j = 0
    while j < words.length
      word = s[i + j * word_length, word_length]
      break unless word_count.key?(word)

      seen[word] ||= 0
      seen[word] += 1
      break if seen[word] > word_count[word]

      j += 1
    end
    result << i if j == words.length
  end

  result
end