class SportsTeam

  attr_reader :team_name, :players, :coach, :points
  attr_writer :coach, :points

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  # def team_name
  #   return @team_name
  # end
  #
  # def players_names
  #   return @players
  # end
  #
  # def coach_name
  #   return @coach
  # end
  #
  def set_coach_name(new_coach_name)
    @coach = new_coach_name
  end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def check_players_name(name)
    for player in @players
      if player == name
        return true
      end
    end
  end

  #Create a method that takes in whether the team has won or lost and updates the points property for a win.

  def points_if_win(team_result)
    if team_result == "Win"
      @points += 5
    end
  end
  

end
