class PicturesController < ApplicationController

  def index 
    pictures = Picture.all
    render json: pictures.to_json(except: [:created_at, :updated_at])
  end

end
