class InspirationsController < ApplicationController

  def create
    Inspiration.create :image_file => params["image_file"],
                 :blog_title=> params["blog_title"],
                 :date_posted=> params["date_posted"],
                 :inspo_reason=> params["inspo_reason"]

    redirect_to "/inspirations"
  end

  def update
    i = Inspiration.find_by(id: params["id"])
    i.image_file = params["image_file"]
    i.blog_title = params["blog_title"]
    i.date_posted = params["date_posted"]
    i.inspo_reason = params["inspo_reason"]
    i.save
    redirect_to "/inspirations"
  end

  def destroy
    i = Inspiration.find_by(id: params["id"])
    i.delete
    redirect_to "/inspirations"
  end


end
