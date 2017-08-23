class App
  extend Forwardable
  attr_reader :f, :n

  LJUST_FOR_INDEX = 8
  LJUST_FOR_NAME = 24

  def initialize
    @f = FormerClient.new
    @n = NewClient.new
  end

  def menu
    puts
    puts 'Select from list below.'
    puts "[1] Get #{@f.screen_name}'s friends list."
    puts "[2] Get #{@n.screen_name}'s friends list."
    puts '[3] exit.'
    puts
  end

  def list_friends(client)
    # FIXME: use table to make operation easier.
    client.friends.each.with_index do |friend, i|
      puts "[#{i}]" + format_string(friend)
    end
    puts
    puts 'type index number to select user.'
    puts "type 'exit' to return to menu."
    puts
    input = gets.chomp
    if input == 'exit'
      return
    elsif input.match(/\d+/)
      confirm_to_follow?(client.friends.to_a[input.to_i])
    else
      puts not_supported
    end
  end

  private

  def not_supported
    'this type of message is not supported'
  end

  def format_string(friend)
    ''.ljust(LJUST_FOR_INDEX) + friend.screen_name.ljust(LJUST_FOR_NAME) + friend.name
  end

  def confirm_to_follow?(friend)
    loop do
      puts "Follow #{friend.name} @#{friend.screen_name}?"
      puts 'Type y/n.'
      confirmation = gets.chomp
      case confirmation
      when 'y'
        @n.follow(friend.screen_name)
        puts "#{@n.screen_name} followed #{friend.screen_name}"
        break
      when 'n'
        puts 'okay.'
        break
      else
        puts not_supported
      end
    end
  end
end
