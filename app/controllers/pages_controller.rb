class PagesController < ApplicationController
  before_action :authenticate_user!
  # Uncomment in production later on

  def home
    @users = User.geocoded #returns user with coordinates
    @user = User.find_by(params[:user_id])


    @markers = @users.map do |user|
      if user == current_user
        dog_image = helpers.asset_url('crown_dog.png')
      else
        dog_image = helpers.asset_url('logo.png')
      end
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: dog_image,
        user: user
        # image_url: user.dog.photo_url
      }
    end
  end

  def endpoint
  end

end
