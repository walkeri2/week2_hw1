require ('minitest/autorun')
require ('minitest/reporters')
require_relative('../team_class')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test

  def setup
    @sports_team = SportsTeam.new('Team 1', ['Iain', 'Jack', 'Alan'], 'Niall', 0)
  end

  def test_team_name
    assert_equal('Team 1', @sports_team.team_name)
  end

  def test_team_players
    assert_equal(['Iain', 'Jack', 'Alan'], @sports_team.team_players)
  end

  def test_team_coach
    assert_equal('Niall', @sports_team.team_coach)
  end

  def test_set_team_coach
    # @sports_team.set_team_coach('Jordan')
    @sports_team.team_coach = 'Jordan'
    assert_equal('Jordan', @sports_team.team_coach)
  end

  def test_add_player
    @sports_team.team_players = 'Jeff'
    assert_equal('Jeff', @sports_team.team_players)
  end

  def test_player_check
    @sports_team.team_players = 'Jack'
    assert_equal('Jack', @sports_team.team_players)
  end

  def test_team_won_lost
    assert_equal(4, @sports_team.team_points)
  end

end
