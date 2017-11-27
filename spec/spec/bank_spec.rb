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

  describe '#deposit_statement' do
    it 'prints an account deposit statement' do
      bank.deposit(1000, '2/2/18')
      expect(bank.deposit_statement).to eq "Deposit: £1000, Date: 2/2/18, Balance: £1000"
    end
  end

end


# bank.withdraw(500, '3/2/18')
# expect(bank.print_statement).to eq "Withdrawal: £500, Date: 3/2/18, Balance: £500"
