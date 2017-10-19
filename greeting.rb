def welcome
  result = ARGV[1..-1]  
    result.each do |y|
        p "#{ARGV[0]} #{y}"
    end

end

welcome