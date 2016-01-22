require './lib/docking_station.rb'


class Van

  attr_accessor :to_fix

  def dock_bikes_to_fix(broken_bikes)
    @to_fix = []
    @to_fix.push(broken_bikes)
  end

  def release_to_fix
    
  end

end
