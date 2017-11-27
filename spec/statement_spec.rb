require 'statement'

describe Statement do

  class BankDouble

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

  let(:bank) { BankDouble.new }
  let(:statement) { described_class.new(bank)}

  it 'prints an account statement' do
    bank.deposit(1000, '2/2/18')
    expect(statement.print_statement).to eq "2/2/18, £1000, £1000"
  end

end
