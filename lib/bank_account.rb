

class BankAccount
  attr_accessor :account, :status, :balance
  attr_reader :name

   def initialize(name)
     @name = name
     @balance = 1000
     @status = "open"
   end

   def deposit(amount)
     @balance += amount
   end

   def display_balance
     return "Your balance is $#{@balance}."
   end

   def valid?
    return self.status == "open" && @balance > 0
   end

   def close_account
     self.status = "closed"
   end


end
