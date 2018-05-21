class SportsTeam
  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
  end

  def team_name
    return @team_name
  end

  def players_names
    return @players
  end

  def coach_name
    return @coach
  end

def set_coach_name(new_coach_name)
@coach = new_coach_name
end






end
