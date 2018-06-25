(1..4).to_a.collect {|i| (1..4).to_a.collect {|j| j + (i - 1) * 4 }} .each {|arr| p arr}

puts '- * ' * 10 + '-'

(1..16).each_slice(4) {|i| p i}
