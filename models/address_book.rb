require_relative 'entry'
require "csv"

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
  
  def import_from_csv(file_name)
    # Implementation goes here
    csv_text = File.read(file_name)
    csv = CSV.parse(csv_text, headers: true, skip_blanks: true)

    csv.each do |row|
      row_hash = row.to_hash
      add_entry(row_hash["name"], row_hash["phone_number"], row_hash["email"])
    end
  end
  
end

r = AddressBook.new

r.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
r.add_entry('tim', '010.012.1815', 'augusta.king@lovelace.com')
r.add_entry('hihello', '010.012.1815', 'augusta.king@lovelace.com')
r.add_entry('summer solstice', '010.012.1815', 'augusta.king@lovelace.com')
#p r.inspect



