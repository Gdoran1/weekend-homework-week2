class Club

  attr_reader(:name, :entry_cost)

  def initialize(name, entry_cost)
    @name = name
    @entry_cost = entry_cost
    @till = []
  end

  def cash_in_till()
    return @till.length()
  end
  # def guest_has_cash()
  #   return @cash
  # end

end
