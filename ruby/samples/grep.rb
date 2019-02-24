filepath = ARGV[0]
keyword  = ARGV[1]
regexp = Regexp.new(keyword, Regexp::IGNORECASE)
File.open(filepath, 'r') {|f|
  f.each_line{|line|
    puts line if line.match(regexp)
  }
}

# ruby grep.rb data/words.txt apple
