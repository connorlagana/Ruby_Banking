require account.rb
class Customer
  attr_accessor :customer_number, :first_name, :last_name, :ssn, :address, :account_numbers


  def initialize(customer_number, first_name, last_name, ssn, address, account_numbers)
    @customer_number = customer_number
    @first_name = first_name
    @last_name = last_name
    @ssn = ssn
    @address = address
    @account_numbers = account_numbers
  end
  
  def new_account()
    puts("What type of account would you like to open? (Checking = 'C', Savings = 'S')")
    type = gets.chomp

    puts("How much would you like to depoist?")
    balance = gets.chomp.to_i - 3

    time1 = Time.now

    #SOME RANDOM GENERATOR FUNCTION FOR ACCOUNT NUMBERS

    if type.downcase = "c"
      #open checking account
      
      new_acct = Account.new(@customer_number, balance, account_num, type, time1.inspect)
      
    elsif typ.downcase = 's'
      #open savings account
    else
      puts("Please select either Checking = 'C' or Savings = 'S'")
    end
  end

end

