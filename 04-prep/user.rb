class User
  @@all = []
  def initialize(username)
    @username = username
    # @tweets = []
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
    # @tweets
    # Do a select(take in a conditional and it will
  #return a new array, where condition is true)
    # variable name of the object
    # User.name == self.name
    Tweet.all.select do |tweet|
      # binding.pry
      tweet.user == self
    end
  end

  #setter
  #writer
  def post_tweet(message)
    #create a new Tweet
    # add it to the tweet collection
    binding.pry
    Tweet.new(message, self)
  end

  def like_tweet(tweet)
    # Creating a new instance of a Like class
    # tweet, user => self
    # binding.pry
    Like.new(self, tweet, 0)
  end

  def likes
    Like.all.select do |like|
      like.user == self
    end
  end


  def liked_tweets
    #[#<>, #<>]
    # Like Class => find all tweets that I have liked
    self.likes.map do |like|
      like.tweet
    end
  end

  def unlike_tweet(tweet)
    #
    #
    # Like.all.each do |like|
    #   self.liked_tweets.each do |liked_tweet|
    #     like.tweet
    #   end
    # end
  end

end
