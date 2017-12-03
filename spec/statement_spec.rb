require 'statement'

describe Statement do

  let(:statement) { described_class.new }

  describe '#column_headers' do
    it 'has a column header hash' do
      expect(statement.column_headers).to eq 'date || credit || debit || balance'
    end
  end

  describe '#print_statment' do
    it 'can print a bank statement' do
      expect(statement.print_statement).to eq '03/12/2017 || £0 || £1000 || £1000'
    end
  end

end
