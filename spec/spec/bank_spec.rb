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

end
