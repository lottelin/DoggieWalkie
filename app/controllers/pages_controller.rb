class PagesController < ApplicationController
  before_action :authenticate_user!
  # Uncomment in production later on

  def home
    @users = User.geocoded #returns user with coordinates
    @user = User.find_by(params[:user_id])


    @markers = @users.map do |user|
      if user == current_user
        dog_image = helpers.asset_url('dog_crown.png')
        {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: dog_image,
        owner: true
        # image_url: user.dog.photo_url
      }
      else
        dog_image = helpers.asset_url('logo.png')
              {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: dog_image,
        user: user,
        owner: false
        # image_url: user.dog.photo_url
      }
      end

    end
  end

  def endpoint
  end

  def homepage
  end

end
