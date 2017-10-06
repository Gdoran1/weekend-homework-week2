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

  def pay_entry_cost
    return @till.count + @entry_cost
  end

   

end
