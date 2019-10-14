class Musical

  attr_accessor :name
  attr_reader :setting_city

  @@all = []

  def initialize(name, setting_city)
    @name = name
    @setting_city = setting_city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_introductions
    # binding.pry
    @@all.each do |musical|
      puts "Welcome, this is #{musical.name}, set in #{musical.setting_city}"
    end
  end

  def perform_in_theater(theater, date)
    Performance.new(date, self, theater)
  end

  def performances
    Performance.all.select do |performance|
      performance.musical == self
    end
  end

  def theaters
    self.performances.map do |performance|
      performance.theater
    end
  end

end
