class Statement

  attr_reader :bank

  def initialize(bank)
    @bank = bank
  end

  def print_statement
    bank.print_statement
  end

end
