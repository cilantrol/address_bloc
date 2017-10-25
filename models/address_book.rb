require_relative 'entry'

class AddressBook
  attr_reader :entries
  
  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    index = 0


    entries.each do |entry|
    p " #{name} , #{entry.name}"
    
      if name < entry.name
        break
      end
      index += 1
    end
    entries.insert(index, Entry.new(name, phone_number, email))

  end
  
  def remove_entry(name, phone_number, email)
    entry = nil
    
    @entries.each do |x|
      if name == x.name || phone_number == x.phone_number || email == x.email
        entry = x
      end
    end
    
    @entries.delete(entry)
  end
  
end

r = AddressBook.new

r.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
r.add_entry('tim', '010.012.1815', 'augusta.king@lovelace.com')
r.add_entry('hihello', '010.012.1815', 'augusta.king@lovelace.com')
r.add_entry('summer solstice', '010.012.1815', 'augusta.king@lovelace.com')
#p r.inspect



