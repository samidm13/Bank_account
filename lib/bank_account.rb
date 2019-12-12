 class BankAccount
   attr_reader :balance

  def initialize
      @balance = 0
  end

   def deposit(money)
     @balance = @balance + money
   end

   def withdraw(money)
     @balance = @balance - money
   end
end
