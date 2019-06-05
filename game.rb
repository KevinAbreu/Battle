ALL_UNITS = []

class Unit
  attr_accessor :name, :hp, :mp, :speed, :ct, :maxhp, :maxmp, :status #Getter and setter
  def initialize(name) #constructor function
    self.name = name
    self.hp = 50 #default values
    self.mp = 10 #default values
    self.speed = 5 #default values
    self.ct = 0 #default values
    self.maxhp = 50 #default values
    self.maxmp = 10 #default values
    self.status = "alive" #default values
    ALL_UNITS << self
  end

def attack(target) #method
  puts "#{self.name} attacked #{target.name}"
end
end

class Squire < Unit #inheritence
  def initialize(name)
    super(name) # function that calls the superclass's constructor method
  end
  #we can specify unique methods
  #or overwrite methods from the parent by using the same name
  def throw_stone(target)
    puts "#{self.name} threw a stone..."
  end
end

class Wizard < Unit
  def initialize(name)
    super(name)
    self.hp -= 10 #we can alter default values by specifying
    self.speed -= 2
    self.mp += 30
  end

  def cast()
    puts "#{self.name}casted magic"
  end

end

def battle_is_over? #boolean function/method. The ? is purely for readability
  felled = []
  ALL_UNITS.each do |unit|
    if unit.status == "alive"
      felled << false
    else
      felled << true
  end
  if felled.any?(false)
    return false
  end
end

def start_battle
  battle_time = true
  while battle_time
    if battle_is_over?
      break
    end
    ALL_UNITS.each do |unit|
      unit.ct += unit.speed
      if unit.ct
  end
end
