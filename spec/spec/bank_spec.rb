require 'bank'

describe Bank do

  let(:bank) { described_class.new }

  it 'starts with a balance of zero' do
    expect(bank.balance).to eq 0
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

end
