require 'awesome_print'
require './twitter_clients/twitter_client.rb'
require './twitter_clients/new_client.rb'
require './twitter_clients/former_client.rb'

class App
  attr_reader :f, :n

  def initialize
    @f ||= FormerClient.new
    @n ||= NewClient.new
  end

  def menu
    puts
    puts 'Select from list below.'
    puts "[1] Get #{@f.screen_name}'s friends list."
    puts "[2] Get #{@n.screen_name}'s friends list."
    puts '[3] exit.'
    puts
  end

  def fetch_friends(client)
    client.friends.each.with_index(1) do |friend, i|
      puts "[#{i.to_s.center(3)}]   #{friend.screen_name.ljust(24)} #{friend.name}"
    end
  end
end

app = App.new

while true do
  app.menu
  input = gets.chomp.to_i
  puts
  if input == 1
    app.fetch_friends(app.f)
  elsif input == 2
    app.fetch_friends(app.n)
  elsif input == 3
    break
  else
    puts 'This type of input is not supported.'
  end
end
