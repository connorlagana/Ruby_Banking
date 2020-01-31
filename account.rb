class Account
    attr_reader :customer_num, :balance, :account_num, :account_type, :account_pin, :time_stamp
  
    def initialize (customer_num, balance, account_num, account_type, account_pin)
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
      when "transfer"
        transfer
      else
        puts "Error: your balance is less than 0"
    end
    end
    def transfer ()
      puts "How much do you want to transfer?"
      input2 = gets.chomp.to_i
      if(input2 <= balance)
        puts"What is the account number you want to transfer to?"
        account_num = gets.chomp.to_s
        puts "Transfer has been completed"
        @balance = balance - input2
        # other_acct_balance = balance + input2
        puts "Your Remaining Balance is : #{balance}"
        # puts "Your second account balance is #{ other_acct_balance}"
      else
        puts "you don't have enough money in your account"
        action
      end
  
    end
  end
  class Checking < Account
  
  end
  mark_acct = Account.new(333, 5000, "923456", "Cheking_Acctount",987)
  john_acct = Account.new(444, 200, "967787", "Cheking_Acctount",997)
  # puts mark_acct.customer_num
  # puts mark_acct.balance
  # puts mark_acct.account_num
  #  puts mark_acct.
  # p mark_acct
  puts mark_acct.customer_num
  mark_acct.pin
  mark_acct.action
  john_acct.pin
  john_acct.action
  class Account
    attr_reader :customer_num, :balance, :account_num, :account_type, :account_pin, :time_stamp
  
    def initialize (customer_num, balance, account_num, account_type, account_pin)
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
      when "transfer"
        transfer
      else
        puts "Error: your balance is less than 0"
    end
    end
    def transfer ()
      puts "How much do you want to transfer?"
      input2 = gets.chomp.to_i
      if(input2 <= balance)
        puts"What is the account number you want to transfer to?"
        account_num = gets.chomp.to_s
        puts "Transfer has been completed"
        @balance = balance - input2
        # other_acct_balance = balance + input2
        puts "Your Remaining Balance is : #{balance}"
        # puts "Your second account balance is #{ other_acct_balance}"
      else
        puts "you don't have enough money in your account"
        action
      end
  
    end
  end
  class Checking < Account
  
  end
  mark_acct = Account.new(333, 5000, "923456", "Cheking_Acctount",987)
  john_acct = Account.new(444, 200, "967787", "Cheking_Acctount",997)
  # puts mark_acct.customer_num
  # puts mark_acct.balance
  # puts mark_acct.account_num
  #  puts mark_acct.
  # p mark_acct
  puts mark_acct.customer_num
  mark_acct.pin
  mark_acct.action
  john_acct.pin
  john_acct.action
class Account
  attr_reader :customer_num, :balance, :account_num, :account_type, :account_pin, :time_stamp

  def initialize (customer_num, balance, account_num, account_type, account_pin)
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
    when "transfer"
      transfer
    else
      puts "Error: your balance is less than 0"
  end
  end
  def transfer ()
    puts "How much do you want to transfer?"
    input2 = gets.chomp.to_i
    if(input2 <= balance)
      puts"What is the account number you want to transfer to?"
      account_num = gets.chomp.to_s
      puts "Transfer has been completed"
      @balance = balance - input2
      # other_acct_balance = balance + input2
      puts "Your Remaining Balance is : #{balance}"
      # puts "Your second account balance is #{ other_acct_balance}"
    else
      puts "you don't have enough money in your account"
      action
    end

  end
end
class Checking < Account

end
mark_acct = Account.new(333, 5000, "923456", "Cheking_Acctount",987)
john_acct = Account.new(444, 200, "967787", "Cheking_Acctount",997)
# puts mark_acct.customer_num
# puts mark_acct.balance
# puts mark_acct.account_num
#  puts mark_acct.
# p mark_acct
puts mark_acct.customer_num
mark_acct.pin
mark_acct.action
john_acct.pin
john_acct.action
    