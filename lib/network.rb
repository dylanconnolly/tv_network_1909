class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    network_actors = @shows.map do |show|
      show.characters
    end
    character = network_actors.flatten.max_by do |char|
      char.salary
    end
    character.actor
  end
end
