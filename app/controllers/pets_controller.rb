class PetsController < ApplicationController

  def index
    @pets = Pet.all
    # render 'index.html.erb'
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      # show the new.html.erb but with the @pet that has errors #17
      render 'new'
    end
  end

  def edit
    # for the form
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render 'edit'
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :species, :date)
  end
end
