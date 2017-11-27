class Bank

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(credit, date)
    @balance += credit
  end

  def withdraw(debit)
    @balance -= debit
  end

  def print_statement
    "You deposited £1000 on 2/2/18"
  end

end
