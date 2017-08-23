require 'twitter'
require 'dotenv'
require 'forwardable'

Dotenv.load!('.env')

class TwitterClient
  extend Forwardable
  attr_reader :client, :friends

  def_delegators :client, :user, :friends
  def_delegators :user, :name, :screen_name

  def initialize
    @friends = @client.friends
  end
end
