#shawn's solution
require 'pry'

def char_count(stringy)
    return_str = ""
    stringy_char = stringy.chars
    current_letter = stringy_char[0]
    count = 0
    stringy_char.each_with_index do |char, index|
        # binding.pry
        if char == current_letter
            count += 1
        elsif index == (stringy_char.length-1)
            return_str += current_letter + count.to_s
            current_letter = char
            count = 1
        end
    end
    return_str
end

puts char_count("abbbccc")
# puts char_count("aaabbbcccdddaaa")