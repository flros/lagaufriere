class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!

    def index
        @rentables = Rentable.all
        @hash = Gmaps4rails.build_markers(@rentables) do |rentable, marker|
          marker.lat rentable.latitude
          marker.lng rentable.longitude
        end
    end
end