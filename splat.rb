def call_friends(message, *friends)
  friends.each do |f|
    puts "#{f}: #{message}"
  end
  puts ""
end

call_friends("Hello!", "Bob", "Thay", "Bill", "George")

# or

friends = ["George", "William", "Caio"]
call_friends("Hello!", *friends)

#or

friends = %w(Friend1 Friend2 Friend3)
call_friends("Hello!", *friends)
