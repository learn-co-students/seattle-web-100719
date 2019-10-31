#fonzie's recurisive surprise

def smashing_stones(arr)
    if arr.length == 0 || arr.length == 1
        return arr[0]
    else
        sorted_arr = arr.sort
        y = sorted_arr.pop
        x = sorted_arr.pop
        if x == y
            smashing_stones(sorted_arr)
        else
            sorted_arr.push(y-x)
            smashing_stones(sorted_arr)
        end
    end
end

puts smashing_stones([2,4,6,7,3,4,9])
puts smashing_stones([8,8,8,8,8,8,8,8])