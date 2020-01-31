class Account
    attr_reader :customer_num, :balance, :account_num, :account_type, :access, :account_pin
  
    def initialize (customer_num, balance, account_num, account_type, time_stamp, account_pin )
      @customer_num = customer_num
      @balance = balance
      @account_num = account_num
      @account_type = account_type
      @time_stamp = time_stamp
      @account_pin = account_pin
    end
    def pin
      puts "Please enter your pin number"
      pin = gets.chomp.to_i
      if(pin == account_pin)
        puts  "Welcome to our bank"
      else
        puts "Wrong pin number, try again!"
      end
    end
  
    def cases
      while (pin == account_pin)
        case1 :withdraw
        puts "How much do you want to withdraw?"
        money = gets.chomp.to_i
        if(money <= balance)
        puts "Take your money, do you need to perform more transaction? "
        else
        "You don't have enough money!"
        end
        case2 :display
        puts "#{balance}"
        case3 :deposite
        money += balance
    end
  
  end
    end
  class Checking < Account
  
  end
  mark_acct = Account.new(333, 100, 923456, "Cheking_Acct", true, 987)
  puts mark_acct.customer_num
  mark_acct.pin
  mark_acct.cases
  
  
  