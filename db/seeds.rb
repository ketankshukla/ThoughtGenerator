#populate the topics table

topic = Topic.new(name: "What drink do you usually order with your food?")
topic.save!
topic = Topic.new(name: "What is one thing you would change about your home?")
topic.save!
topic = Topic.new(name: "Would you rather not be able to use your hands or not be able to walk?")
topic.save!
topic = Topic.new(name: "Do you believe in an afterlife?")
topic.save!
topic = Topic.new(name: "Where did you grow up?")
topic.save!
topic = Topic.new(name: "Have you ever been in love?")
topic.save!
topic = Topic.new(name: "What was your least favorite job that you've had?")
topic.save!
topic = Topic.new(name: "When you were younger, what did you want to be when you grew up?")
topic.save!
topic = Topic.new(name: "What do you usually eat in the morning?")
topic.save!
topic = Topic.new(name: "If you could live anywhere on earth, where would you live?")
topic.save!
topic = Topic.new(name: "What is a short/long term goal of yours?")
topic.save!
topic = Topic.new(name: "What is the best part of your day?")
topic.save!
topic = Topic.new(name: "How do you think the world will end?")
topic.save!
topic = Topic.new(name: "If you where asked to teach a class, what class would you teach?")
topic.save!
topic = Topic.new(name: "What is your favorite condiment?")
topic.save!
topic = Topic.new(name: "Do you prefer to take baths or showers?")
topic.save!
topic = Topic.new(name: "If you could try out any job for one week, what job would you choose to try?")
topic.save!
topic = Topic.new(name: "What is your middle name?")
topic.save!
topic = Topic.new(name: "At what age would you consider someone to be old?")
topic.save!
topic = Topic.new(name: "Are you a risk taker? What is the biggest risk that you've taken?
")
topic.save!

puts "#{Topic.count} topics created"



