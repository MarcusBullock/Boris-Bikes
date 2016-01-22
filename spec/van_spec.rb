require 'van'


describe Van do
  #let (:bike){double("bike")}
  it {is_expected.to respond_to(:dock_bikes_to_fix).with(1).argument}

  # let (:bike){double("bike")}
  # let (:bike){double("bike2")}
  # let (:broken_bikes){double("brokenbikes")}

  #it 'should accept some bikes' do
  it "returns a new array of broken bikes when we call dock_bikes_to_fix" do
    # let (:broken_bikes){double("brokenbikes")}
    array_elements = double("array_elements")
    array_elements = ["a","b","c"].pop
    expect(subject.dock_bikes_to_fix(array_elements)).to eq [array_elements]
  end

  it {is_expected.to respond_to(:release_to_fix)}

  it "releases the bikes" do
    to_fix = [a,b,c]
    expect(subject.release_to_fix).to eq (abc)

  end



end
