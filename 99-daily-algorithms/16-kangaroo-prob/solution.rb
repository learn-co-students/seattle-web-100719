#fonzie's non-math approach

def kangaroo(x1, v1, x2, v2)
    if (x1>x2 && v1>v2) || (x1<x2 && v1<v2)
        return "NO"
    elsif x1 == x2 
        return "YES"
    else 
        if x1<x2
            abstracted(x1, v1, x2, v2)
        elsif x1>x2
            abstracted(x2, v2, x1, v1)
        end
    end
end

def abstracted(lower, l_rate, higher, h_rate)
    while lower < higher
        if lower == higher
            return "YES"
        else
            lower += l_rate
            higher += h_rate
    end
    return "NO"
end

#fonzie feat. matt

def kanga(x1, v1, x2, v2)
    if x1>x2 && v1>v2 || x1<x2 && v1<v2 
        return "NO"
    elsif x1 == x2 
        return "YES"
    else 
        counter = 0
        while counter < 10000
            x1+=v1
            x2+=v2
            if x1 == x2
                return "YES"
            end
            counter++
        end
        return "NO"
    end
end

#alisa's array surprise

def kangaroo(x1, v1, x2, v2)
    arr1 = []
    arr2 = []
    arr1 << x1
    arr2 << x2

    var1 = x1 + v1
    var2 = x2 + v2
    arr1 << var1
    arr2 << var2
    i = 0
    
    while i < 10000
      if arr1[i] == arr2[i]
        return "YES"
      end 

      var1 += v1 
      var2 += v2
      arr1 << var1
      arr2 << var2
      i += 1
    
    end
    return "NO" 

end

#rachid's short & sweet version

def kangaroo(x1, v1, x2, v2)
    if (v1 == v2 && x1 != x2)
        return "NO"
    elsif (v1 == v2 && x1 == x2) 
        return "YES"
    elsif (x1-x2)/(v2-v1) >=0 && (x1-x2)%(v2-v1) == 0  
        return "YES"
    else 
        return "NO"
    end
end