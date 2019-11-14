#katrina's solution

def unique_value(arr)
    hash = {}
    # count = 1
    arr.each do |num|
        if hash[num]
            hash[num] += 1
        else
            hash[num] = 1
        end
    end
    hash.key(1)
end

puts unique_value([1,1,2,2,3,4,4,5,5])