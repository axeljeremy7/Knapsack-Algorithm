=begin

Author(s): Axel Solano
=end

class Val

  def initialize(benefit, weight)
    @be = benefit
    @we = weight
    @val = (benefit*1.0/weight*1.0)
    @amo = weight
  end

  def print
    puts "b:#{@be}, w:#{@we}"
  end

  def setamount(amount)
    @amo = amount
  end

  def getamount
    @amo
  end

  def getbenefit
    @be
  end

  def getweight
    @we
  end

  def getvalue
    @val
  end

end
