require_relative 'bank'

class Statement

  attr_reader :header

  def initialize
    @header = "date || credit || debit || balance"
  end

  def print_statement(store_transactions)
    store_transactions.map do |transaction|
      transaction.values.join( '||')
    end
  end

end
