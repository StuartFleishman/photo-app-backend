class UsersController < ApplicationController


  def index 
    users = User.all
    render json: users.to_json(except: [:created_at, :updated_at])
  end

  def create
    user = User.new(user_params)
    if user.save
        render json: users.to_json(except: [:created_at, :updated_at])
    else 
        render json: {error: "oops"}
    end 
  end


  private 
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end


end
