require 'statement'

describe Statement do

  class BankDouble

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

    def print_date
      date = Date.today
      date.strftime("%d/%m/%Y")
    end

  end

  let(:bank) { BankDouble.new(statement) }
  let(:statement) { described_class.new }
  let(:date) { Date.today.strftime("%d/%m/%Y")}

  describe '#print_statment' do
    it 'can print a bank statement' do
      bank.deposit(1000)
      expect(statement.print_statement(bank.store_transactions)).to eq ["#{date}||£1000||||£1000"]
    end
  end

end
