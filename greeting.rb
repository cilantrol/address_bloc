def welcome
    ARGV.each do |x|
        p "Hey #{x}"
    end

end

welcome