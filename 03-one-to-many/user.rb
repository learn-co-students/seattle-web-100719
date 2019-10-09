class User
  @@all = []
  def initialize(username)
    @username = username
    @tweets = []
    @@all << self
  end

  def self.all
    @@all
  end

  #reader
  #getter
  def username
    @username
  end

  def tweets
    @tweets
  end

  #setter
  #writer
  def post_tweet(message)
    #create a new Tweet
    # add it to the tweet collection
    binding.pry
    Tweet.new(message, self)
  end

end
