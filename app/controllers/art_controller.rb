class ArtController < ApplicationController

  def create
    Art.create :art_type => params["art_type"],
                 :piece_name => params["piece_name"],
                 :price => params["price"],
                 :inspiration_link => params["inspiration_link"],
                 :size => params["size"],
                 :image_file => params["image_file"]
    redirect_to "/art"
  end

  def update
    art = Art.find_by(id: params["id"])
    art.art_type = params["art_type"]
    art.piece_name = params["piece_name"]
    art.price = params["price"]
    art.inspiration_link = params["inspiration_link"]
    art.size = params["size"]
    art.image_file = params["image_file"]
    art.save
    redirect_to "/art"
  end

  def destroy
    art = Art.find_by(id: params["id"])
    art.delete
    redirect_to "/art"
  end



end
