require 'rails_helper'

RSpec.describe Artist, type: :model do
  before(:all) do
    @artist = Artist.new(first_name: "Whitney", last_name: "Houston") 
  end
  it "has matching first name" do
    expect(@artist.first_name).to eq("Whitney")
  end
  it "has matching last name" do
    expect(@artist.last_name).to eq("Houston")
  end
end
