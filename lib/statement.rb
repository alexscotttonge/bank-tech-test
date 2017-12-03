require_relative 'bank'

class Statement

  def column_headers
    "date || credit || debit || balance"
  end

  def print_statement(store_transactions)
    "03/12/2017 || £0 || £0 || £0"
  end

end
