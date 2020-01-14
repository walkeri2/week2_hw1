class SportsTeam

attr_accessor :team_name, :team_players, :team_coach, :team_points

  def initialize (input_team_name, input_players, input_coach, input_team_points)
    @team_name = input_team_name
    @team_players = input_players
    @team_coach = input_coach
    @team_points = input_team_points
  end

  def team_name()
    return @team_name
  end

  def team_players()
    return @team_players
  end

  def team_coach()
    return @team_coach
  end

  def set_team_coach(new_coach_name)
    @team_coach = new_coach_name
  end

  def add_player(player)
    @team_players << (player)
  end

  def player_check (player)
    if player == @sports_team.include?('Jack')
      return true
    end
  end

  def team_won_lost(points)
    total = 0
    for points in @team_points
      total += points[:team_points]
      return total
    end
  end

end
