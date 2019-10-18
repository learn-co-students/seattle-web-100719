require_relative './panimals.rb'
class Dog < Panimals
    extend Methods::ClassMethods
    include Methods::InstanceMethods
    def speak
        super
        puts "YAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    end
end