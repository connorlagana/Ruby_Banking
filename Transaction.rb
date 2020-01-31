class Transaction
  def initialize(trans_num, trans_type, amount, time_stamp, from_acct, to_acct)
    @trans_num = trans_num
    @trans_type = trans_type
    @amount = amount
    @time_stamp = time_stamp
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
  
end
