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
    store_transaction({ date: print_date, deposit: "£#{@credit}", withdrawal: "#{@debit}", balance: "£#{@balance}" })
  end

  def withdraw(debit)
    @debit = debit
    @balance -= debit
    store_transaction({ date: print_date, deposit: "£#{@credit}", withdrawal: "#{@debit}", balance: "£#{@balance}" })
  end

  def store_transaction(transaction)
    store_transactions.push(transaction)
  end

  def print_headers
    statement.column_headers
  end

  def print_date
    date = Date.today
    date.strftime("%d/%m/%Y")
  end

end
