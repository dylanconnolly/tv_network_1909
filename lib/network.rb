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

  def payroll
    #get list of characters
    #create hash containing character.actor => character.salary
    network_actors = @shows.map do |show|
      show.characters
    end
    network_actors.flatten.reduce({}) do |payroll, character|
      payroll[character.actor] = character.salary
      payroll
    end
  end
end
