require 'bank'

describe Bank do

  let(:bank) { described_class.new }

  it 'starts with a balance of zero' do
    expect(bank.balance).to eq 0
  end

  describe '#deposit' do
    it 'deposits money in the account' do
      bank.deposit(1000, '3/4/18')
      expect(bank.balance).to eq 1000
    end
  end

  describe '#withdraw' do
    it 'withdraws money from the account' do
      bank.deposit(1000, '3/4/18')
      bank.withdraw(500, '4/4/18')
      expect(bank.balance).to eq 500
    end
  end

  describe '#print_statement' do
    it 'prints an account statement' do
      bank.deposit(1000, '2/2/18')
      bank.withdraw(500, '3/2/18')
      expect(bank.print_statement).to eq "You deposited £1000 on 2/2/18,\nYou withdrew £500 on 3/2/18"
    end
  end

end
