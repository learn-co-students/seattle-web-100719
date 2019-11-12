class Brew < ApplicationRecord
  has_many :purchases,dependent: :destroy
  validates :blend_name, uniqueness: true
  def self.strongest_brews
    brews = Brew.all.sort_by {|brew| -brew.strength}
    brews.select {|brew| brew.strength == brews.first.strength}
  end
end
