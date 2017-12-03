require 'statement'

describe Statement do

  let(:statement) { described_class.new }

  it 'has a column header hash' do
    expect(statement.column_headers).to eq "date || credit || debit || balance"
  end

end
