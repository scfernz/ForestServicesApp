require 'rails_helper'

RSpec.describe Species, type: :model do
  it 'has a name' do
    expect { new_species = Species.create!(name: "Lion") }.to_not raise_error
  end

  it 'has a unique name' do
    new_species = Species.create!(name: "Tiger")
    expect { new_entry = Species.create!(name: "Tiger")}.to raise_error
  end
end
