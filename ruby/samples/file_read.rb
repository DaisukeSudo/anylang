file = File.open('./data/sample1.txt', 'r')
puts file.read
file.close

File.open('./data/sample2.txt', 'r') {|f| puts f.read}
