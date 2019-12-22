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
=begin
  def execute_transaction
    if self.valid?
      receiver.balance += amount
      sender.balance -= amount

  end
=end
end
