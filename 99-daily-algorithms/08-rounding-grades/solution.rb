#shawn

def round_grades(grades)
    grades.map do |grade|
        if grade >= 38
            if grade%5 >= 3
                grade += (5-grade%5)
            else
              grade
            end
        else
          grade
        end
    end
end

puts round_grades([37, 63, 74, 51])