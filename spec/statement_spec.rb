require 'statement'

describe Statement do

  class BankDouble

  end

  let(:bank) { BankDouble.new }
  let(:statement) { described_class.new(bank)}

  it 'prints an account statement' do
    expect(statement.print_statement).to eq "2/2/18, £1000, £1000"
  end

end
