load 'account.rb'


class Transaction

  def initialize(trans_num, trans_type, amount, from_acct, to_acct)
    time = Time.new
    @trans_num = trans_num
    @trans_type = trans_type
    @amount = amount
    @time_stamp = time.inspect
    @from_acct = from_acct
    @to_acct = to_acct
  end

  def show_details
    puts "Transaction Number: #{@trans_num}"
    puts "Transaction Type: #{@trans_type}"
    puts "Amount: #{@amount}"
    puts "Time Stamp: #{@time_stamp}"
    puts "From Account: #{@from_acct}"
    puts "To Account: #{@to_acct}"
  end

  def log_transaction
    file = File.open(File.dirname(__FILE__ ) + '/transactions.txt', "a")
    file.puts("#{@trans_num} #{@trans_type} #{@amount} #{@time_stamp} #{@from_acct} #{@to_acct}")
    file.close
  end

end

transaction = Transaction.new(1, 'deposit', 500, 'n/a', '756468')
transaction.show_details
transaction.log_transaction

