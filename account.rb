
class Account
    attr_reader :customer_num, :balance, :account_num, :account_type, :access
  
    def initialize (customer_num, balance, account_num, account_type, access)
      @customer_num = customer_num
      @balance = balance
      @account_num = account_num
      @account_type = account_type
      @access = access
    end
    def pin
      puts "Please enter your pin number"
      pin = get.chomp.to_i
    end
    def access (account_pin)
      if(pin = account_pin)
        "Welcome to our bank"
      else
        "Wrong pin number, try again!"
      end
    end
  
  end
  
  class Checking < Account
  
  end
  # casey_acct = Account.new
  
  