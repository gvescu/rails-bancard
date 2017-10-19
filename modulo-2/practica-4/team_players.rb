class Player
  #attr_reader
  attr_reader :name, :skill_level,:age
  #initialize
  def initialize(name,skill_level,age)
    @name = name
    @skill_level= skill_level
    @age = age
  end

  def to_s
    "<#{name}: #{skill_level}(SL), #{age}(AGE)>"
  end

end

class Team
  #attr_accessor
  attr_accessor :name, :players
  #initialize
  def initialize(name,players)
    @name=name
    @players=players
  end
  #add_players
  def add_players(players)
    @players =+ players
  end

  def to_s
    "#{@name} team: #{@players.join(", ")}"
  end

end

player1 = Player.new("Bob", 13, 5)
player2 = Player.new("Jim", 15, 4.5)
player3 = Player.new("Mike", 21, 5)
player4 = Player.new("Joe", 14, 5)
player5 = Player.new("Scott", 16, 3)

red_team = Team.new("Red")
red_team.add_players(player1, player2, player3, player4, player5)

# Seleccionar únicamente los jugadores entre 14 y 20 años y no incluir a ningún jugador con skill-level menor a 4.5
elig_players = [red_team.select{|player|.age.betwen?(14,20)}.reject{|player|.skill_level < 4.5}#COLOCAR AQUÍ LA SELECCION#
puts elig_players
# DEBE IMPRIMIR
# => <Jim: 4.5(SL), 15(AGE)>
# => <Joe: 5(SL), 14(AGE)>
