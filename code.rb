#YOUR CODE GOES HERE
non_delimiters = /[^(){}\[\]]*/
Paired = /\(#{non_delimiters}\)|\{#{non_delimiters}\}|\[#{non_delimiters}\]/
Delimiter = /[(){}\[\]]/
def bracket_match?(s)
  s = s.dup #duplicates string
  s.gsub!(Paired, "".freeze) while s =~ Paired
  #copy of str with the all occurrences of pattern substituted for the second argument.
  #The pattern is typically a Regexp;
  s !~ Delimiter
end


puts bracket_match?("Hi! Wh{}at is your name {again (I forgot?)}")
