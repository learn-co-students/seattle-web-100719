#christian mathy way, O(n)

def missing_num(arr)
    sum = 55
    arr.each do |missing_num|
        sum -=num
    end
    return sum
end

#christian programmy way, O(n^2)

def missing_num(arr)
    complete = [1,2,3,4,5,6,7,8,9,10]
    complete.filter do |num|
        !array.include?(num)
    end
end

#alisa's hashy idea, O(n)

def missing_num(arr)
    hashy = {1=>0, 2=>0, 3=>0,4=>0, 5=>0, 6=>0,7=>0, 8=>0, 9=>0, 10=>0}
    arr.each do |num|
        hashy[num] += 1
    end
    hashy.each do |k, v|
        if v == 0
            return k
        end
    end
end

puts missing_num([1,2,3,5,6,7,8,9,10])