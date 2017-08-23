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
