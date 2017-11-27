class Bank

  attr_reader :balance, :credit_date, :credit, :balance, :transaction

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
    @transaction = "#{@credit_date}, £#{@credit}, £#{@balance}"
    @transaction
  end



end
