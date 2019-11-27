class PagesController < ApplicationController
  # before_action :authenticate_user!
  # Uncomment in production later on

  def home
    @users = User.geocoded #returns user with coordinates

    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: helpers.asset_url('Logo.png')
        # image_url: user.dog.photo_url
      }
    end
  end
end
