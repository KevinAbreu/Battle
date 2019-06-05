class Warrior
  attr_accessor :name, :hp, :magic, :atk,
  def initialize(name)
    @name = name
    self.hp = 100
    self.mp = 10
    self.atk = 30
    self.magic = 5
  end
  def attack(target)
    @target.hp -= self.atk
    puts "#{@name} attacked #{taget.name}"
    if target.hp < 1
      puts "#{target.name} is ded"
    end
  end
end

class Mage
  attr_accessor :name, :hp, :magic, :atk,
  def initialize(name)
    @name = name
    self.hp = 60
    self.mp = 100
    self.atk = 10
    self.magic = 40
  end
  def attack(target)
    @target.hp -= self.magic
    puts "#{@name} attacked #{taget.name}"
    if target.hp < 1
      puts "#{target.name} is ded"
    end
  end
end


def start_battle(p1, p2)
  puts "Battle Begins"
  $battle_time = true
  while $battleTime
    if p1.status == "fallen"  || p2.status == "fallen"
      puts "it is over"
      break
    end
    puts "Select an action\n1 - Attack\n2 - Pass\n3 - Quit"
    answer = gets.chomp.to_i
    if answer.== 1
      puts "you attacked"
    elsif answer == 2
      puts "Skipped"
    elsif answer == 3
      puts "Exting..."
    else
      puts "NO NO NO"
      battle_time = false
    end
  end
end
