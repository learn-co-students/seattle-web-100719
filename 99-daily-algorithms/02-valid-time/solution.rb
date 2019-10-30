#Matt's solution, given the prompt's assumption of valid input

def validTime?(s)
    res=s.split(':')
    resI = res.map do |el|
        el.to_i
    end

    if resI[0] >= 0 && resI[0] <= 23 && resI[1] >= 0 && resI[1]<= 59
        return true
    else
        return false
    end
end
