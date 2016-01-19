# In spec/docking_station_spec.rb

require "docking_station"



describe DockingStation do

  it {is_expected.to respond_to(:release_bike)}
  it {is_expected.to respond_to(:dock).with(1).argument}


  it "expects station to release working bikes" do
    subject.dock(Bike.new)
    instance = subject.release_bike
    expect(instance).to eq instance
  end

  it "doesn't let you dock a bike at a staton that is already occupied" do
    station = DockingStation.new
    station.dock(Bike.new)
    expect {station.dock(Bike.new)}.to raise_error("This docking bay is already occupied!")
  end

  it "doesn't release a bike when empty" do
    expect {subject.release_bike}.to raise_error("No bikes left idiot!")
  end

  it "expects station to show the docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike.first).to eq(bike)
  end
  
end
