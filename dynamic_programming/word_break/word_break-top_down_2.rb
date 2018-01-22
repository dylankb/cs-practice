# https://leetcode.com/problems/word-break/description/

def word_break(string, dict)
  if dict.include?(string)
    return true
  end

  dict.each do |word|
    if string.start_with?(word)
      if word_break(string[word.length, string.length-1], dict)
        return true
      end
    end
  end

  return false
end

p word_break('helloo', ['he', 'll', 'oo']) == true
p word_break('helloo', ['he','lp','oo']) == false
p word_break('helloo', ['he', 'lpoo']) == false
p word_break('helloo', ['he', 'l', 'oo']) == false # false positive
p word_break('helloo', ['be', 'l', 'oo']) == false
p word_break('helloo', ['he']) == false
