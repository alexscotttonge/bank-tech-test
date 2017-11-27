class Statement

  attr_reader :bank

  def initialize(bank)
    @bank = bank
  end

  def column_headers
    { date: "Date", deposit: "Deposit", withdrawal: "Withdrawal", balance: "Balance" }
  end

end
