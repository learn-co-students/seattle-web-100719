class EmployersPet < ActiveRecord::Base
  belongs_to :pet
  belongs_to :employer
end
