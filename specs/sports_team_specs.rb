require("minitest/autorun")
require("minitest/rg")

require_relative("../sports_team")


class TestSportsTeam< Minitest::Test

  def test_team_name
    sports_team = SportsTeam.new("Sports queens", ["Tara", "Serena", "Venus", "Muguruza"], "Federer")
    assert_equal("Sports queens", sports_team.team_name)
  end

  def test_player_names
    sports_team = SportsTeam.new("Sports queens", ["Tara", "Serena", "Venus", "Muguruza"], "Federer")
    player_array = ["Tara", "Serena", "Venus", "Muguruza"]
    assert_equal(player_array, sports_team.players)
  end

  def test_coach_name
    sports_team = SportsTeam.new("Sports queens", ["Tara", "Serena", "Venus", "Muguruza"], "Federer")
    assert_equal("Federer", sports_team.coach)
  end

  def test_add_coach_name
    sports_team = SportsTeam.new("Sports queens", ["Tara", "Serena", "Venus", "Muguruza"], "Federer")
    sports_team.set_coach_name("Nadal")
    assert_equal("Nadal", sports_team.coach)
  end

  def test_add_new_player
    sports_team = SportsTeam.new("Sports queens", ["Tara", "Serena", "Venus", "Muguruza"], "Federer")
    total_players = sports_team.add_new_player("Caroline")
    assert_equal(5, total_players.count())
  end

  def test_find_players_name
    sports_team = SportsTeam.new("Sports queens", ["Tara", "Serena", "Venus", "Muguruza"], "Federer")
    player_name = sports_team.check_players_name("Serena")
    assert_equal(true, player_name)
  end

  def test_points_when_team_wins
    sports_team = SportsTeam.new("Sports queens", ["Tara", "Serena", "Venus", "Muguruza"], "Federer")
    sports_team.points_if_win("Win")
    assert_equal(5, sports_team.points)
  end


end
