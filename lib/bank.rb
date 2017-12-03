class Bank

  attr_reader :balance, :credit_date, :credit, :balance, :store_transactions, :statement

  def initialize(statement)
    @balance = 0
    @store_transactions = []
    @statement = statement
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
    transactions = { date: "#{@credit_date}", deposit: "£#{@credit}", withdrawal: "#{@debit}", balance: "£#{@balance}" }
    @store_transactions << transactions
  end

  def print_headers
    statement.column_headers
  end

end
