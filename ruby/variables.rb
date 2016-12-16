#!/usr/bin/ruby
$global_variable = "GLOBAL" # global variable

class Customer
  attr_reader :cust_name # instance variable
  @@no_of_customers=0 # class variable
  def initialize(id, name, addr) # local variable
    @cust_id=id
    @cust_name=name
    @cust_addr=addr
    @@no_of_customers += 1 # compartilhado entre as instâncias
    puts $global_variable
  end

  def total_no_of_customers()
    puts "Total number of customers: #@@no_of_customers"
  end
end


cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2=Customer.new("2", "Poul", "New Empire road, Khandala")

puts cust1.cust_name
puts cust1.total_no_of_customers()
puts cust2.cust_name
puts cust2.total_no_of_customers()


a, b, c = 10, 20, 30
puts a,b,c
