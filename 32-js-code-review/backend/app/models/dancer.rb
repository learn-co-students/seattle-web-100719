class Dancer < ApplicationRecord
  validates :url, presence: true

  has_many :feedback
end