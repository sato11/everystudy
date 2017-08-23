require 'twitter'
require 'dotenv'
require 'forwardable'
require './client.rb'
require './app.rb'

app = App.new
f, n = app.f, app.n

loop do
  app.menu
  input = gets.chomp.to_i
  puts # return
  case input
  when 1
    app.list_friends(f)
  when 2
    app.list_friends(n)
  when 3
    break
  else
    puts app.send(:not_supported)
  end
end
