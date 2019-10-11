require 'require_all'
require_all 'lib'

class Department
    attr_reader :manager, :employee , :name

    @@all = []

    def initialize(manager, employee, name)
        @manager = manager
        @employee = employee
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

end