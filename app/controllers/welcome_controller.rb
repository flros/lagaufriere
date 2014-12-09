class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!

    def index
      @torents = Torent.all

      # Let's DYNAMICALLY build the markers for the view.
      @markers = Gmaps4rails.build_markers(@torents) do |torent, marker|
        marker.lat flat.latitude
        marker.lng flat.longitude
      end
    end
end