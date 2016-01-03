class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artist_path(@artist)
    else
      render 'new'
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end
  
  private

  def artist_params
    params.require(:artist).permit(:id, :first_name, :last_name)
  end
end
