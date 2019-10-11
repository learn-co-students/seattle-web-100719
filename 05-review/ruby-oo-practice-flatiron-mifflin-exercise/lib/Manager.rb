require 'pry'
require 'require_all'
require_all 'lib'

class Manager
    attr_reader :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.average_age
        # @@all.reduce{|memo, val| memo += val.age}.to_f / @@all.length.to_f
        sum = 0 
        @@all.each do |manager|
            sum += manager.age
        end
        sum.to_f / @@all.length.to_f
    end

    def department
        Department.all.each do |department|
            if department.manager == self
                return department.name
            end
        end
        nil
    end

    def employees
        arr = []
        Department.all.each do |department|
            if department.manager == self
                arr << department.employee
            end
        end
        arr
    end
    
    #create new employee, set self as manager by creating a department
    def hire_employee(employee_name, salary)
        employee = Employee.new(employee_name, salary)
        Department.new(self, employee, self.department)
    end
    
    def self.all_departments
        arr = []
        Department.all.each do |department|
            arr << department.name
        end
        arr.uniq
    end

end

binding.pry
