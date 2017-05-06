require_relative '../Knapsack-Algorithm/Val.rb'
require_relative '../Knapsack-Algorithm/Maxheap.rb'
=begin

Author(s): Axel Solano
=end

class Knapsack

  def initialize
    @h = Heap.new
    @x = []
  end

  def knap(set,weight)
    x = []
    @h.build(set)
    i = 0
    w = 0
    c = 0
    while(w < weight && @h.getSize != 0)
      a = min(@h.removeMax(set), weight - w)
      c = c + @h.getopsr
      @x[i] = a
      #puts "benefit => #{a.getvalue}"
      i = i + 1
      w = w + a.getamount
      #puts "w=> #{w}"
    end

    #puts "Total ops in knapsack=> #{c}"
    return @x

  end

  def getx
    @x
  end

  def min(a,b)
    if a.getweight < b
      return a
    else
      va = Val.new(a.getbenefit,a.getweight)
      va.setamount(b)
      return va
    end

  end

end
