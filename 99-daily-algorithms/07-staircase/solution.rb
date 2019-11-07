#katrina

def staircase(n)
    if n > 0 && n < 101
      (1..n).each do |i|
        puts " " * (n-i) + "#" * i
      end 
    end 
end 
  
staircase(5)

staircase(4)