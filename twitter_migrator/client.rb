Dotenv.load!('.env')

class TwitterClient
  extend Forwardable
  attr_reader :client, :friends

  def_delegators :client, :user, :follow
  def_delegators :user, :name, :screen_name

  def initialize
    raise 'Cannot initialize TwitterClient. Use FormerClient or NewClient' if @client.nil?
    @friends = @client.friends
  end
end

class FormerClient < TwitterClient
  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['FORMER_CONSUMER_KEY']
      config.consumer_secret     = ENV['FORMER_CONSUMER_SECRET']
      config.access_token        = ENV['FORMER_ACCESS_TOKEN']
      config.access_token_secret = ENV['FORMER_ACCESS_SECRET']
    end
    super
  end
end

class NewClient < TwitterClient
  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['NEW_CONSUMER_KEY']
      config.consumer_secret     = ENV['NEW_CONSUMER_SECRET']
      config.access_token        = ENV['NEW_ACCESS_TOKEN']
      config.access_token_secret = ENV['NEW_ACCESS_SECRET']
    end
    super
  end
end
