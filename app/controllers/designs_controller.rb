class DesignsController < ApplicationController

  def create
    Design.create :project_title => params["project_title"],
                 :project_time => params["project_time"],
                 :project_cost => params["project_cost"],
                 :inspiration_link => params["inspiration_link"],
                 :room => params["room"],
                 :image_file => params["image_file"]
    redirect_to "/designs"
  end

  def update
    project = Design.find_by(id: params["id"])
    project.room = params["room"]
    project.project_title = params["project_title"]
    project.project_time = params["project_time"]
    project.project_cost = params["project_cost"]
    project.inspiration_link = params["inspiration_link"]
    project.image_file = params["image_file"]
    project.save
    redirect_to "/designs"
  end

  def destroy
    project = Design.find_by(id: params["id"])
    project.delete
    redirect_to "/designs"
  end


end
