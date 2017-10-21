class Entry
  attr_accessor :name, :phone_number, :email
  
  def initialize(name, phone_number, email)
    @name = name
    @phone_number = phone_number
    @email = email
  end
  
  def to_s
    "Name: #{name}\nPhone Number: #{phone_number}\nEmail: #{email}"
  end
end

e = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
e.to_s