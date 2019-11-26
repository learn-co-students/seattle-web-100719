class Feedback < ApplicationRecord
  self.table_name = :feedback
  belongs_to :dancer
end