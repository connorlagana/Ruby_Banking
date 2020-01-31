class Account
    attr_reader :customer_num, :balance, :account_num, :account_type, :account_pin
  
    def initialize (customer_num, balance, account_num, account_type, time_stamp, account_pin)
      time_stamp = Time.now
      @customer_num = customer_num
      @balance = balance
      @account_num = account_num
      @account_type = account_type
      @time_stamp = time_stamp.inspect
      @account_pin = account_pin
    end
  
    def pin
      puts "Please enter your pin number"
      pin = gets.chomp.to_i
    end
  
    def action
      puts "What would you like to do? (withdraw, deposit, display, transfer)"
      input = gets.chomp
      case input
      when "withdraw"
      puts "How much do you want to withdraw?"
      money = gets.chomp.to_i
      if(money <= balance)
        puts "Please take your money"
        @balance = balance - money
        puts "Your Remaining Balance is : #{balance}"
      else
        puts "You don't have enough money in your account, please enter different amount"
        money = gets.chomp.to_i
      end
      when "deposite"
        puts "How much do you want to deposite?"
        money = gets.chomp.to_i
        @balance = money + balance
        puts "#{balance}"
      when "display"
        puts "#{balance}"
      else
        puts "Error: your balance is less than 0"
    end
  end
  end
  class Checking < Account
  
  end
  mark_acct = Account.new(333, 5000, 923456, "Cheking_Acct",345,987)
  # puts mark_acct.customer_num
  # puts mark_acct.balance
  # puts mark_acct.account_num
  puts mark_acct.account_type
  puts mark_acct.customer_num
  mark_acct.pin
  mark_acct.action
  
  