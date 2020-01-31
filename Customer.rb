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
    

    if type == "c" or type == 's'
      
      new_acct = Account.new(@customer_number, balance, random_number, type, time1.inspect, pin)
      account_numbers.append(random_number)
      return new_acct
    else
      puts("Please select either Checking = 'C' or Savings = 'S'")
    end
  end

  def load_data()


    #empty arrays
    customer_number = []
    first_name = []
    last_name = []
    ssn = []
    address = []
    account_numbers = []

    file = File.open(File.dirname(__FILE__ ) + '/customer.txt', "r")
    file.each_line do |line|
      split_line = line.split(" ")
      customer_number.append(split_line[0])
      first_name.append(split_line[1])
      last_name.append(split_line[2])
      ssn.append(split_line[3])
      address.append(split_line[4])
      account_numbers.append(split_line[5])
    end

    puts account_numbers
  end

  def log_transaction
    file = File.open(File.dirname(__FILE__ ) + '/customer.txt', "a")
    file.puts("#{@customer_number} #{@first_name} #{@last_name} #{@ssn} #{@address} #{@account_numbers}")
    file.close
  end

end

connor = Customer.new("Rick", "James", "980-00-2340", "1 Rick James Ave", [1009, 129])
connor.load_data