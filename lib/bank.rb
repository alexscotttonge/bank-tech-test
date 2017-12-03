require 'date'
require_relative 'statement'

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

  def transactions
    store_transactions << { date: print_date, deposit: "£#{@credit}", withdrawal: "#{@debit}", balance: "£#{@balance}" }
  end

  def print_headers
    statement.column_headers
  end

  def print_date
    date = Date.today
    date.strftime("%d/%m/%Y")
  end

end
