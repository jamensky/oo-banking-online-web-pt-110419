require 'pry'

class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid?
    receiver.valid?
  end

  def execute_transaction
    if self.valid? && sender.balance >= amount && @status  == "pending"
      receiver.balance += amount
      sender.balance -= amount
      @status = "complete"
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end

    def reverse_transfer
      if @status == "complete"
         receiver.balance -= amount
         sender.balance += amount
         @status = "reversed"
      end
    end

  end

end
