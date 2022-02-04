=begin
    Customer class 
=end

class Customer
    @@no_of_customers = 0
    #customer constructor method
    def initialize(id, name, address)
        @cust_id = id
        @cust_name = name
        @cust_address = address
        @@no_of_customers += 1 
    end

    def self.printCount()
        puts "Customer Count : #@@no_of_customers"
    end

    def getCustomerId
        @cust_id
    end

    def getCustomerName
        @cust_name
    end

    def getCustomerAddress
        @cust_address
    end

    def setCustomerId=(value)
        @cust_id = value
    end

    def setCustomerName=(value)
        @cust_name = value
    end

    def setCustomerAddress=(value)
        @cust_address = value
    end

    #  details of customer 
    def getCustomerDetails
        puts "Customer Id : #@cust_id"
        puts "Customer Name : #@cust_name"
        puts "Customer Address : #@cust_address"
    end
    protected :getCustomerDetails
    # define to_s method 
    def to_s 
            "\n\tCustomer Id : #@cust_id \n\tCustomer Name : #@cust_name \n\tCustomer Address : #@cust_address"
    end

end

customer1 = Customer.new("1","ravindra","surat,gujarat")

customer1.setCustomerId="100"
customer1.setCustomerName="ravindra Mali"
customer1.setCustomerAddress="Surat,Gujarat,India"

puts "Customer Details : #{customer1}"
Customer.printCount()
customer2 = Customer.new("2","ravi mali","baroda,gujarat")
puts "Customer Details : #{customer2}"
Customer.printCount()

customer3 = Customer.new(1,"daval","bhopal")
address = customer3.getCustomerAddress
puts "Address : #{address}"

customer3.getCustomerDetails