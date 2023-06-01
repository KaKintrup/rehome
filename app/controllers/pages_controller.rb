class PagesController < ApplicationController
  def home
    @projects = Project.all.sample(3)
    @markers = @projects.map do |project|
      {
        lat: project.latitude,
        lng: project.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {project: project}),
        marker_html: render_to_string(partial: "marker")
        
      }
    end
  end
end
