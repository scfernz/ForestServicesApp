class AddSpeciesController < ApplicationController
  def Add
    species_name = params[:species_name]
    @species = Species.new
    @species.name = species_name
    @species.save
    render 'Add.html.erb'
  end
end
