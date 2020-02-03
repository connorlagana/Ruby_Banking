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

def new_customer
  puts("Hey! Welcome to Wells Fargo!")
  puts("Whats your first name?")
  first = gets.chomp.downcase
  
  puts("Whats your last name?")
  last = gets.chomp.downcase

  puts("DUDE! #{first} #{last} is such a cool name")
  puts "Enter your social security number. We promise we won't sell it on the black market 😉"
  ssn = gets.chomp

  puts 'Enter your address so we can send you your debit card or whatever.'
  address = gets.chomp

  puts("What type of account would you like to open? (Checking = 'C', Savings = 'S')")
  type = gets.chomp.downcase

  puts("How much would you like to deposit?")
  balance = gets.chomp.to_i - 3

  puts("Yo we gotta take $3 out of that account because we're Wells Fargo and we commit white collar crimes so your balance is $#{balance}")
  
  puts("Create a 4 digit pin")
  pin = get_pin
  pin

  random_number2 = rand(999999999)
  
  customer = Customer.new(random_number2, first, last, ssn, address, [], pin)
  customer.log_transaction
  puts "You've officially created an account at the worlds shittiest bank! Congrats! 🎊🥳🎉"
  puts "Your account number is #{random_number2}"
  
  return customer
end

def created_account_intro()
  puts "Is there anything else we could do for you today?"
  puts "D: Deposit"
  puts "W: Withdrawl"
  puts "B: Check Balance"
  puts "U: Update information"
end

def created_account(customer)
  enter = gets.chomp
  enter.downcase
  if enter == "d"

  elsif enter == "w"

  elsif enter == "b"

  elsif enter == "u"
    customer.update(customer)
  else
    puts "bro...#{enter} isn't a command. follow the rules plz"
  end

  created_account_intro
  created_account(customer)
end

def run_program

  customer = new_customer
  
  created_account_intro()

  created_account(customer)
  
end

run_program






