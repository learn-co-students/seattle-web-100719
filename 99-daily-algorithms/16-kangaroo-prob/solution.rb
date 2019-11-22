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