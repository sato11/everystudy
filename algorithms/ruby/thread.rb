##################
# normal process #
##################

s = Thread.new do
  5.times { print 's'; sleep 1 }
end
t = Thread.new do
  5.times { print 't'; sleep 1 }
end

s.join; t.join
puts

#####################
# exclusive process #
#####################

@m = Thread::Mutex.new

sx = Thread.new do
  @m.lock
  begin
    5.times { print 's'; sleep 1 }
  ensure
    @m.unlock
  end
end
tx = Thread.new do
  @m.lock
  begin
    5.times { print 't'; sleep 1 }
  ensure
    @m.unlock
  end
end

sx.join; tx.join
puts

##### output #####
#   ststtsstst   #
#   sssssttttt   #
##################
