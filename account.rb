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
    if (pin == account_pin)
      puts "Welcome!"
      action
    elsif (pin != account_pin)
      puts "Your pin number is incorrect!"
      pin
    end
  end

  def action
    puts "What would you like to do? (withdraw, deposit, display, transfer)"
    input = gets.chomp
    case input
    when "withdraw"

      puts "How much do you want to withdraw?"
      money = gets.chomp.to_i
      if (money <= balance)
        puts "Please take your money"
        new_balance = balance - money
        @balance = new_balance
        update(@account_num, @balance)
        puts "Your Remaining Balance is : #{balance}"
      elsif (money <= balance + 100)
        puts "You have over draft fee : $35"
        @balance = balance - money
        update(@account_num, @balance)
        puts "You exceed your balance by: #{balance} plus an overdraft charge for -35"
      else
        (money > balance + 100)
        puts "You don't have enough money in your account, please enter different amount"
        money = gets.chomp.to_i
      end
    when "deposite"
      puts "How much do you want to deposite?"
      money = gets.chomp.to_i
      new_balance = money + balance
      @balance = new_balance
      update(@account_num, @balance)
      puts "Your new balance is : #{balance}"
      puts "Thank you!"
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
    if (input2 <= balance)
      puts "What is the account number you want to transfer to?"
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

  def save_account
    file = File.open(File.dirname(__FILE__) + '/accounts.txt', "a")
    file.puts("#{@account_num} #{@balance} #{@account_type} #{@account_pin} #{@customer_num} #{@time_stamp}")
    file.close
  end

  def load_data
    acct_numbers = []
    balances = []
    acct_types = []
    acct_pins = []
    cust_nums = []
    time_stamps = []
    file = File.open(File.dirname(__FILE__) + '/accounts.txt', "r")
    file.each_line do |line|
      acct_numbers << line.split(" ")[0]
      balances << line.split(" ")[1]
      acct_types << line.split(" ")[2]
      acct_pins << line.split(" ")[3]
      cust_nums << line.split(" ")[4]
      time_stamps << line.split(" ")[5]
    end
  end

  def update(acct_number, new_item)
    field = 'balance'

    acct_numbers = []
    balances = []
    acct_types = []
    acct_pins = []
    cust_nums = []
    time_stamps = []
    file = File.open(File.dirname(__FILE__) + '/accounts.txt', "r")
    file.each_line do |line|
      acct_numbers << line.split(" ")[0]
      balances << line.split(" ")[1]
      acct_types << line.split(" ")[2]
      acct_pins << line.split(" ")[3]
      cust_nums << line.split(" ")[4]
      time_stamps << line.split(" ")[5]
    end

    index = acct_numbers.index(acct_number)

    if field == 'balance'
      balances[index] = new_item
      p balances[index]
    end
    file = File.open(File.dirname(__FILE__ ) + '/accounts.txt', "w")
    for i in 0...acct_numbers.length()

      file.puts("#{acct_numbers[i]} #{balances[i]} #{acct_types[i]} #{acct_pins[i]} #{cust_nums[i]} #{time_stamps[i]}")

    end
    file.close
  end
end

  class Checking < Account

  end




  # mark_acct = Account.new(333, 400, "923456", "Cheking_Acctount", 987)
  # john_acct = Account.new(444, 200, "967787", "Cheking_Acctount", 997)
  # puts mark_acct.customer_num
  # puts mark_acct.balance
  # puts mark_acct.account_num
  #  puts mark_acct.
  # p mark_acct
  #
  # mark_acct.save_account
  # john_acct.save_account
  # puts mark_acct.customer_num
  # mark_acct.pin
  #john_acct.pin


