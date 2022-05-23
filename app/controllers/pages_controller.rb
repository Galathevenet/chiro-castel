class PagesController < ApplicationController
  def home
    @cabinets = Cabinet.all
    @markers = @cabinets.geocoded.map do |cabinet|
      {
        lat: cabinet.latitude,
        lng: cabinet.longitude
      }
    end
  end
end
