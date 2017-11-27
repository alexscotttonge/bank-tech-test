require 'bank'

describe Bank do

  let(:bank) { described_class.new }

  it 'starts with a balance of zero' do
    expect(bank.balance).to eq 0
  end

end
