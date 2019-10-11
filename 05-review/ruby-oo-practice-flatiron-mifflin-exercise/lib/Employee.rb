require 'require_all'
require_all 'lib'

class Employee
    attr_accessor :name, :salary

    @@all = []

    def initialize(name, salary)
        @name = name 
        @salary = salary
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.paid_over(amount)
        @@all.select do |employee|
            employee.salary > amount
        end
    end

    def tax_bracket
        @@all.select do |employee|
            # employee.salary.between?(self.salary - 1000, self.salary + 1000)
            employee.salary <= self.salary + 1000 && employee.salary >= self.salary - 1000
        end
    end

    def manager_name 
        Department.all.each do |department|
            if department.employee == self 
                return department.manager
            end 
        end
        nil
    end

    def self.find_by_department(department_name)
        Department.all.each do |department|
            if department.name == department_name
                return department.employee
            end 
        end
        nil
    end

end
