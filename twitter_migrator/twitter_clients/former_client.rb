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
