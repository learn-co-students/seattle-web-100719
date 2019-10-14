class Performance
  attr_accessor :musical, :theater
  @@all = []

  def initialize(date, musical, theater)
    @date = date
    @musical = musical
    @theater = theater
    @@all << self
  end

  def self.all
    @@all
  end

  def hometown_setting?
    self.musical.setting_city == self.theater.city
  end

end
