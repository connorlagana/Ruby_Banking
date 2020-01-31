class Account
    attr_reader :customer_num, :balance, :account_num, :account_type, :access, :account_pin
  
    def initialize (customer_num, balance, account_num, account_type, time_stamp, account_pin)
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
      if (pin == account_pin)
        puts "Welcome to our bank"
      else
        puts "Wrong pin number, try again!"
      end
    end
  
    def cases
      case balance
      when balance > 0
      puts "How much do you want to withdraw?"
      money = gets.chomp.to_i
      # if (money <= balance)
      #   puts "Take your money, do you need to perform more transaction? "
      # else
      #   "You don't have enough money!"
      # end
      when balance
      puts "#{balance}"
      when balance >= 0
      money += balance
    else
      puts "Error: your balance is less than 0"
    end
    end

    def save_account
      file = File.open(File.dirname(__FILE__ ) + '/accounts.txt', "a")
      file.puts("#{@account_num} #{@balance} #{@account_type} #{@account_pin} #{@customer_num} #{@time_stamp}")
      file.close
    end

    def update_account
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

  end
  class Checking < Account
  
  end
  mark_acct = Account.new(333, 100, 923456, "Cheking_Acct", true, 987)
  # puts mark_acct.customer_num
  # mark_acct.pin
  # mark_acct.cases
  
  