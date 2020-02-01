Dir["*.rb"].each { |f| require_relative f }



puts("Whats your first name bro?")
first = gets.chomp.downcase
puts("Whats your last name bro?")
last = gets.chomp.downcase
puts("BRO! #{first} #{last} is such a cool name")
puts 'Enter your social security number.'
ssn = gets.chomp
puts 'Enter your address.'
address = gets.chomp

puts("What type of account would you like to open? (Checking = 'C', Savings = 'S')")
type = gets.chomp.downcase
puts("How much would you like to deposit?")
balance = gets.chomp.to_i - 3
puts("yo we gotta take $3 out of that account because we're Wells Fargo and we fucking suck so your balance is #{balance}")
puts("What is your pin number?")
pin = gets.chomp.to_i

customer = Customer.new(first, last, ssn, address, [])
customer.log_transaction





