class Theater

  attr_accessor :title, :city
  @@all = []
  def initialize(title, city)
    @title = title
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def performances
    Performance.all.select do |performance|
      performance.theater == self
    end
  end

  def musicals
    self.performances.map do |performance|
      performance.musicals
    end
  end
end
