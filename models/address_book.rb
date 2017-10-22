require_relative 'entry'

class AddressBook
  attr_reader :entries
  
  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    index = 0


    entries.each do |entry|
    p entry
      if name < entry.name
        break
      end
      index += 1
    end
    entries.insert(index, Entry.new(name, phone_number, email))
    p entries
    p entries.size
  end
  
  def remove_entry(name, phone_number, email)
    # i know  we should do something like
    
    ## find index of argument
    
    # entries.pop(index, Entry.new(name, phone_number, email))  
  
  end
end

r = AddressBook.new
r.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
r.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
r.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
r.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
#p r.inspect
