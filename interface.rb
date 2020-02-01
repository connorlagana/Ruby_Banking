require 'colorize'
load "Customer.rb"
load "Transaction.rb"

def get_pin
  
  pin = gets.chomp.to_s
  if pin.length != 4
    puts "Hey can you maybe make a 4 digit pin this time like we told you to? thx"
    get_pin
  else
    puts "Awesome your pin is #{pin}"
    return pin
  end
end

def run_program
  puts("Whats your first name bro?")
  first = gets.chomp.downcase
  puts("Whats your last name bro?")
  last = gets.chomp.downcase
  puts("BRO! #{first} #{last} is such a cool name")
  puts "Enter your social security number. We promise we won't sell it on the black market 😉"
  ssn = gets.chomp
  puts 'Enter your address so we can send you your debit card or whatever'
  address = gets.chomp

  puts("What type of account would you like to open? (Checking = 'C', Savings = 'S')")
  type = gets.chomp.downcase
  puts("How much would you like to deposit?")
  balance = gets.chomp.to_i - 3
  puts("Yo we gotta take $3 out of that account because we're Wells Fargo and we commit white collar crimes so your balance is #{balance}")
  
  puts("Create a 4 digit pin")
  get_pin
  

  customer = Customer.new(first, last, ssn, address, [])
  customer.log_transaction

  puts "You've officially created an account at the worlds shittiest bank! Congrats! 🎊🥳🎉"
  puts "Is there anything else we could do for you today?"
  puts "D: Deposit"
  puts "W: Withdrawl"
  puts "B: Check Balance"
  puts "P: Change Pin"
end

run_program






