def str_str(haystack, needle)
  return 0 if needle.empty?
  haystack.index(needle) || -1
end