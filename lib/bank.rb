class Bank

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(credit, credit_date)
    @credit = credit
    @credit_date = credit_date
    @balance += credit
  end

  def withdraw(debit, debit_date)
    @debit = debit
    @debit_date = debit_date
    @balance -= debit
  end

  def print_statement
    "You deposited £#{@credit} on #{@credit_date},\nYou withdrew £#{@debit} on #{@debit_date}"
  end

end
