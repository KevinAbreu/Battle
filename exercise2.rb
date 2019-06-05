$all_users = Array.new

class User
  def initialize(name)
    @name = name
    $all_users << self
  end
  def name
    @name
  end
end

user = User.new('Me')
user2 = User.new('Metoo')
puts user.name
puts user2.name
puts $all_users
