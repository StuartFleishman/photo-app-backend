class PicturesController < ApplicationController

  def index 
    pictures = Picture.all
    render json: pictures.to_json(except: [:created_at, :updated_at])
  end

  def create
    picture = Picture.new(picture_params)
    byebug
    if user.save
        render json: picture.to_json(except: [:created_at, :updated_at])
    else 
        render json: {error: "oops"}
    end 
  end


  private 
  def picture_params
    params.require(:picture).permit(:title, :image_url, :category_id, :user_id)
  end

end
