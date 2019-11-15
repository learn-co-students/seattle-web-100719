#Hal's
def two_sum(arr, target)

    hashy = {}
    arr.each_with_index do |num, i|
      if hashy[target - num]
        return hashy[target - num][0], i
      else
        hashy[num] = [i, target-num]
      end
    end
  end


#Christian's

def two_sum_using_i(arr, target)

    hashy = {}
    arr.each_with_index do |num, i|
      if hashy[target - num]
        return hashy[target - num], i
      else
        hashy[num] = i
      end
    end
    nil
  end