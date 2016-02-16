class League

  attr_reader :calculator, :teams

  def initialize(args={})
    @teams = args.fetch(:teams, [])
    @calculator = args.fetch(:calculator) { PointsCalculator.new }
  end

  def standings
    teams.sort_by! { |team| -calculator.points_for_team(team) }
  end

  def playoff_teams
    standings.slice(0, teams.count / 2)
  end

  def position_for(name)
    standings.index{ |team| team.name == name } + 1
  end

end
