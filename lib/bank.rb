class Bank

  attr_reader :balance, :credit_date, :credit, :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
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
    @transaction = { date: "#{@credit_date}", deposit: "£#{@credit}", withdrawal: "#{@debit}", balance: "£#{@balance}"}
  end



end
