class Bank

  attr_reader :balance, :credit, :credit_date

  def initialize
    @balance = 0
  end

  def deposit(credit, credit_date)
    @credit = credit
    @credit_date = credit_date
    @balance += credit
  end

  def withdraw(debit)
    @balance -= debit
  end

  def print_statement
    "You deposited £#{@credit} on #{@credit_date}"
  end

end
