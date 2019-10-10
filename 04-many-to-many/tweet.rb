require 'pry'

class Tweet
  @@all = []

  def initialize(message, user)
    #string
    @message = message
    #User Object
    @user = user
    @@all << self
  end

  def self.all
    @@all
    # User.all
  end

  def message
    @message
  end

  def user
    @user
  end

  def user=(user)
    @user = user
  end

  def username
    # @user.username
    self.user.username
  end

  def likes
    likes = Like.all.select do |like|
      like.tweet == self
    end
  end

  def likers
    # Like.all
    # find all the users for this class
    self.likes.map do |like|
      like.user
    end
  end
end

# binding.pry
# 0
