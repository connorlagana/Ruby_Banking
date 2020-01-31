load "account.rb"

# counter = 1

class Customer
  attr_accessor :customer_number, :first_name, :last_name, :ssn, :address, :account_numbers
  

  def initialize(first_name, last_name, ssn, address, account_numbers)
    random_number2 = rand(999999999)
    @customer_number = random_number2
    @first_name = first_name
    @last_name = last_name
    @ssn = ssn
    @address = address
    @account_numbers = account_numbers
  end
  
  def new_account()
    puts("What type of account would you like to open? (Checking = 'C', Savings = 'S')")
    type = gets.chomp.downcase

    puts("How much would you like to depoist?")
    balance = gets.chomp.to_i - 3

    puts("What is your pin number?")
    pin = gets.chomp.to_i

    time1 = Time.now

    random_number = rand(999999999)
    

    #SOME RANDOM GENERATOR FUNCTION FOR ACCOUNT NUMBERS

    if type = "c"
      #open checking account
      
      new_acct = Account.new(@customer_number, balance, random_number, type, time1.inspect, pin)

      account_numbers.append(random_number)
      
    elsif type = 's'
      #open savings account
    else
      puts("Please select either Checking = 'C' or Savings = 'S'")
    end
  end

end

connor = Customer.new("Connor", "Lagana", "420-69-1000", "1 Fuckme Ave", [5, 19])
connor.new_account()
p (connor)