def is_match(s, p)
    m = s.length
    n = p.length
  
    # Create a DP table
    dp = Array.new(m + 1) { Array.new(n + 1, false) }
  
    # Empty pattern matches empty string
    dp[0][0] = true
  
    # Handle cases where '*' can match zero characters
    (2..n).step(2).each do |j|
      dp[0][j] = dp[0][j - 2] && p[j - 1] == '*'
    end
  
    # Fill the DP table
    (1..m).each do |i|
      (1..n).each do |j|
        if p[j - 1] == s[i - 1] || p[j - 1] == '.'
          # Characters match, or it's a wildcard '.'
          dp[i][j] = dp[i - 1][j - 1]
        elsif p[j - 1] == '*'
          # Check if '*' can match zero or more characters
          dp[i][j] = dp[i][j - 2] || (dp[i - 1][j] && (s[i - 1] == p[j - 2] || p[j - 2] == '.'))
        end
      end
    end
  
    dp[m][n]
  end

  puts is_match("aaaaaaaaaaaaaaaaaaab", "a*a*a*a*a*a*a*a*a*a*")  # Output: true
