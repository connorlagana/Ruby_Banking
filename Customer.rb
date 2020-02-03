load "Account.rb"
require 'colorize'

# counter = 1

class Customer
  attr_accessor :customer_number, :first_name, :last_name, :ssn, :address, :account_numbers, :pin
  

  def initialize(customer_number, first_name, last_name, ssn, address, account_numbers, pin)
    @customer_number = customer_number
    @first_name = first_name
    @last_name = last_name
    @ssn = ssn
    @address = address.tr(" ", "_")
    @account_numbers = account_numbers
    @pin = pin
  end

  def log_transaction
    file = File.open(File.dirname(__FILE__ ) + '/customer.txt', "a")
    file.puts("#{@customer_number} #{@first_name} #{@last_name} #{@ssn} #{@address} #{@account_numbers} #{pin}")
    file.close
  end

  def update(customer)
    puts "which field are you updating 'a' = address, 'f' = first name, 'l' = last name".colorize(:color => :white, :background => :blue)
    field = gets.chomp

    customer_number = []
    first_name = []
    last_name = []
    ssn = []
    address = []
    account_numbers = []
    pins = []

    file = File.open(File.dirname(__FILE__ ) + '/customer.txt', "r")

    file.each_line do |line|
      split_line = line.split(" ")
      customer_number.append(split_line[0])
      first_name.append(split_line[1])
      last_name.append(split_line[2])
      ssn.append(split_line[3])
      address.append(split_line[4])
      account_numbers.append(split_line[5])
      pins.append(split_line[6])
    end

    index = customer_number.index(customer.customer_number.to_s)

    if field == 'a'
      puts "What would you like your new address to be?"
      new_item = gets.chomp
      address[index] = new_item.tr(" ", "_")
    elsif field == 'f'
      puts "What would you like your new first name to be?"
      new_item = gets.chomp
      first_name[index] = new_item.tr(" ", "_")
    elsif field == 'l'
      puts "What would you like your new last name to be?"
      new_item = gets.chomp
      last_name[index] = new_item.tr(" ", "_")
    end

    file = File.open(File.dirname(__FILE__ ) + '/customer.txt', "w")
    for i in 0...customer_number.length()
      
      file.puts("#{customer_number[i]} #{first_name[i]} #{last_name[i]} #{ssn[i]} #{address[i]} #{account_numbers[i]} #{pins[i]}")
      
    end
    file.close

    puts "You've updated your information!"
  end

end