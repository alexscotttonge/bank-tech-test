class Statement

  attr_reader :bank

  def initialize(bank)
    @bank = bank
  end

  def column_headers
    "date || credit || debit || balance"
  end

end
