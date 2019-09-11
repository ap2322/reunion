class Activity
  attr_reader :name, :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, total_cost)
    @participants[name] = total_cost
  end

  def total_cost
    @participants.values.sum
  end

  def split
    total_cost / @participants.length
  end

  def owed
    owed_hash = Hash.new
    @participants.each do |name, cost|
      owed_hash[name] = split - cost
    end
    owed_hash
  end
end
