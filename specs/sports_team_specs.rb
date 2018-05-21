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
    assert_equal(player_array, sports_team.players_names)
  end

  def test_coach_name
    sports_team = SportsTeam.new("Sports queens", ["Tara", "Serena", "Venus", "Muguruza"], "Federer")
    assert_equal("Federer", sports_team.coach_name)
  end

  def test_add_coach_name
    sports_team = SportsTeam.new("Sports queens", ["Tara", "Serena", "Venus", "Muguruza"], "Federer")
    sports_team.set_coach_name("Nadal")
    assert_equal("Nadal", sports_team.coach_name)
  end

  

end
