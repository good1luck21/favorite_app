require "securerandom"

class FavoritesController < ApplicationController
  def index
    radom = SecureRandom.hex(10)
    if session[:user_id] == nil
      @user = User.create(name: "#{radom}", password: "#{radom}", password_confirmation: "#{radom}")
      session[:user_id] = @user.id
    end
    @favorites = BaseFavorite.all
  end

  def create
    @favorite = Favorite.create(user_id: session[:user_id], base_favorite_id: params[:id])
    redirect_to root_path
  end
end
