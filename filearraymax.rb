require 'Benchmark'

def filearraymax(a, n)
  currentmax = a[0]
  (1..n-1).each do |index|
    if(currentmax < a[index])
      currentmax = a[index]
    end
  end
  currentmax
end

file = File.open('output2.csv', 'w')

inparray = Array.new

(1..10).each do |size|
  inparray.clear

  (size*1000000).times do
    inparray.push(rand(10000))
  end

  time = Benchmark.measure do |i|

    #10 how many times I run and then I will divide 
    10.times do
      filearraymax(inparray, inparray.length)
    end

  end

  file.write("#{size*1000000},#{time.real/10}\n")

end

file.close
