class Statement

  attr_reader :bank

  def initialize(bank)
    @bank = bank
  end

  def column_headers
    @col_headers = { date: "Date", deposit: "Deposit", withdrawal: "Withdrawal", balance: "Balance" }
    @col_headers
  end

end
