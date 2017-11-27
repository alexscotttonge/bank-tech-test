require 'statement'

describe Statement do

  class BankDouble

  end

  let(:bank) { BankDouble.new }
  let(:statement) { described_class.new(bank)}

  it 'has a column header hash' do
    expect(statement.column_headers).to eq ({ date: "Date", deposit: "Deposit", withdrawal: "Withdrawal", balance: "Balance" })
  end

end
