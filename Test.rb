require_relative '../Knapsack-Algorithm/Val.rb'
require_relative '../Knapsack-Algorithm/Maxheap.rb'
require_relative '../Knapsack-Algorithm/Knapsack.rb'
require 'Benchmark'

=begin

Author(s): Axel Solano
=end

heap = Heap.new


#TESTING BUILD function
=begin
fileBuild = File.open('build1.csv', 'w')
c = 10000
set = []
(1..100).each do |size|
  set.clear

  (size*c).times do
    set.push( Val.new(rand(1000000),rand(100000)) )
  end

  time = Benchmark.measure do |i|

    10.times do
      heap.build(set)
    end

  end
  puts "  #{size*c},    #{time.real/10}\n"
  fileBuild.write("#{size*c},#{time.real/10}\n")

end
puts "\nDONE\n\n"
fileBuild.close
=end





#TESTING removeMax
=begin
i = 1
n = 31
s = []
set = []
n.times do
  #i = rand(300)+1
  set.push( Val.new(i,1) )
  s.push(i)
  i = i + 2
end
puts "BEFORE Set values=>  #{s}\n"
heap.build(set)
puts "AFTER Set values=>  \n"

i=0
n.times do
  #i = rand(29)+1
  print "#{set[i].getvalue}, "
  i = i + 1
end
puts "\n\nRemove Part"
i = 30
n.times do
  puts "      index=>#{i}"
  i = i - 1;
  puts "#{heap.removeMax(set).getvalue}"
  puts "      ops=> #{heap.getopsr}\n\n\n"
end
puts "\n\n"
=end





#ONE CASE OF KNAPSACKbegin
#TESTING KNAPSACK
=begin
s1 = Val.new(12,4)
s2 = Val.new(32,8)
s3 = Val.new(40,2)
s4 = Val.new(30,6)
s5 = Val.new(50,1)
s6 = Val.new(30,4)
s7 = Val.new(70,7)
s8 = Val.new(51,5)
s9 = Val.new(44,4)
s10 = Val.new(40,9)
set = [s1,s2,s3,s4,s5,s6,s7,s8,s9,s10]

k = Knapsack.new
k.knap(set,41)


i = 0
n = k.getx.length
puts "WEIGHT=> 41mg"
while (i < n)
  puts " #{k.getx[i].getamount }mg of an item with value of $#{k.getx[i].getvalue} per mg (benefit=> #{k.getx[i].getbenefit}, weight=> #{k.getx[i].getweight})"
  i = i + 1
end

=begin
puts "\n\nrand=> 1 000 000  ||  1 000 000 times "
i=0;
s = 0
while i<1000000
  a = rand(1000000)
  #puts "#{a}"
  s = s + a;
  i = i + 1;
end
puts "sum=> #{s}"
puts "w=> #{s*0.8}"

=end
# n times => sum n/2

#TESTING KNAPSACK
=begin
puts "\n\n"
file = File.open('out11.csv', 'w')
c = 10000
b = 10000000
we= 1000000
w = 0
s = Array.new
(1..100).each do |size|
  s.clear
  sum = 0
  (size*c).times do
    t = rand(we)
    s.push( Val.new(rand(b),t) )
    sum = sum + t;
  end

  time = Benchmark.measure do |i|

    10.times do
      k = Knapsack.new
      k.knap(s,w)
    end

  end
  puts "  #{size*c},    #{time.real/10}\n"
  file.write("#{size*c},#{time.real/10}\n")

end
puts "\nDONE\n\n"
file.close
=end
