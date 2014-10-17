class MapController < ApplicationController
  @users = User.all
  @hash = Gmaps4rails.build_markers(@users) do |user, marker|
    marker.lat micropost.latitude
    marker.lng micropost.longitude
  end
end
