class PagesController < ApplicationController
  def home
    @projects = Project.all
    @markers = @projects.geocoded.map do |project|
      {
        lat: project.latitude,
        lng: project.longitude
      }
    end
  end
end
