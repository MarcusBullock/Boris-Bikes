require_relative 'bike'


class DockingStation


  attr_reader :bike

  def initialize
    @bike = []
  end





  def release_bike

    if @bike.empty?
      fail "No bikes left idiot!"

    else
     @bike.first
      #@bike.pop

    end


  end

  def dock(bike)
    if @bike.empty?
      @bike << bike
    else
      raise "This docking bay is already occupied!"


    end
  end

end
