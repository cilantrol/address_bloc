require_relative 'entry'

class AddressBook
  attr_reader :entries
  
  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    index = 0
    p name
    p entries
    p entry
    entries.each do |entry|
      p name.inspect
      p entry.name
      if name < entry.name
        break
      end
      index += 1
    end
    entries.insert(index, Entry.new(name, phone_number, email))
  end
end

r = AddressBook.new
r.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')