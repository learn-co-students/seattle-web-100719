#First whiteboard solve
def unique_array(input)
   result = []
   result << input[0]
   counter = 1
   while counter < input.length do 
        if !result.include?(input[counter])
            result << input[counter]
        end
    counter+=1
   end
   result
end

puts unique_array([1,1,1])

#Refactored on a Repl
def hash_approach(arr)
    hash = {}
    arr.map do |e|
        hash[e] = 0
    end
    hash.keys
end

puts hash_approach([1,1,1,3])