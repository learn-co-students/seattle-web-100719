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
end
