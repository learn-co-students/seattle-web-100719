class Like

  @@all = []
  attr_accessor :user, :tweet, :count
  def initialize(user, tweet, count)
    @user = user
    @tweet = tweet
    @count = count
    @@all << self
  end

  def self.all
    @@all
  end
end
