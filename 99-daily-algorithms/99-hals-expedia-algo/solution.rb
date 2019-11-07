
#class soltuion, runtime: O(n^2)

def higher_num(arr)
    outhashy = {}

    arr.each_with_index do |num, i|
        outhashy[num] = arr.slice(i, arr.length).detect do |num2|
            num < num2
        end
    end
    numm = arr.max
    outhashy[numm] = -1
    puts outhashy
end

#Ix's solution, runtime O(n)
