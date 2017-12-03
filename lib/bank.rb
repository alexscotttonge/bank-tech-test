class Bank

  attr_reader :balance, :credit_date, :credit, :balance, :store_transactions, :statement

  def initialize(statement)
    @balance = 0
    @store_transactions = []
    @statement = statement
  end

  def deposit(credit)
    @credit = credit
    @balance += credit
  end

  def withdraw(debit)
    @debit = debit
    @balance -= debit
  end

  def print_statement
    transactions = { deposit: "£#{@credit}", withdrawal: "#{@debit}", balance: "£#{@balance}" }
    @store_transactions << transactions
  end

  def print_headers
    statement.column_headers
  end

  def date
    "3/12/17"
  end

end
