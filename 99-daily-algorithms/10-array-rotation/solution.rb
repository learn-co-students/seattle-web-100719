#matt's solution, with christian's modulo added

def array_rotation(arr, n)
    remainder = n % arr.length
    remainder.times do
        temp = arr.shift
        arr.push(temp)
    end
    arr.join(" ")
end

puts array_rotation([1,2,3,4,5], 101)
puts array_rotation([1,2,3,4,5], 10)