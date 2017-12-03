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

  let(:bank) { BankDouble.new(statement) }
  let(:statement) { described_class.new }

  describe '#column_headers' do
    it 'has a column header hash' do
      expect(statement.column_headers).to eq 'date || credit || debit || balance'
    end
  end

  describe '#print_statment' do
    it 'can print a bank statement' do
      expect(statement.print_statement(bank.store_transactions)).to eq '03/12/2017 || £0 || £0 || £0'
    end
  end

end
