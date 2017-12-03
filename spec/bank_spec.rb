require 'bank'

describe Bank do

  class StatementDouble

    attr_reader :bank

    def initialize
      @bank = bank
    end

    def column_headers
      "date || credit || debit || balance"
    end

  end

  let(:statement) { StatementDouble.new }
  let(:bank) { described_class.new(statement) }

  describe '#initialize' do
    it 'starts with a balance of zero' do
      expect(bank.balance).to eq 0
    end

    it 'has an empty transactions array' do
      expect(bank.store_transactions).to eq []
    end
  end

  describe '#deposit' do
    it 'deposits money in the account' do
      bank.deposit(1000)
      expect(bank.balance).to eq 1000
    end
  end

  describe '#withdraw' do
    it 'withdraws money from the account' do
      bank.deposit(1000)
      bank.withdraw(500)
      expect(bank.balance).to eq 500
    end
  end

  describe '#store_transaction' do
    it 'prints an account deposit statement' do
      bank.deposit(1000)
      expect(bank.store_transactions).to eq [{ date: '03/12/2017', deposit: "£1000", withdrawal: "", balance: "£1000" }]
    end
  end

  describe '#print_headers' do
    it 'has a column header hash' do
      expect(bank.print_headers).to eq "date || credit || debit || balance"
    end
  end

  describe '#date' do
    it 'has a method to print the date' do
      expect(bank.print_date).to eq '03/12/2017'
    end
  end

  describe '#print_transactions' do
    it 'prints a list of transactions' do
      bank.deposit(1000)
      expect(bank.print_transactions).to eq "date || credit || debit || balance\n03/12/2017||£1000||||£1000"
    end
  end

end
