#Rachid's solution

def is_fibo?(num)
    i = 0
    j = 1
    while j < num
        i = i+j
        j = i+j
    end
    if (num ==i || num ==j)
        puts "Is Fibo"
    else
        puts "Is Not Fibo"
    end
end

puts "     for 5 =>"
is_fibo?(5)
puts "     for 7 =>"
is_fibo?(7)
puts "     for 8 =>"
is_fibo?(8)