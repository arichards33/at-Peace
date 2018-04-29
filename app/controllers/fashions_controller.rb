class FashionsController < ApplicationController

  def create
    Fashion.create :image_file => params["image_file"],
                 :fashion_field => params["fashion_field"]

    redirect_to "/fashions"
  end

  def update
    fashion = Fashion.find_by(id: params["id"])
    fashion.image_file = params["image_file"]
    fashion.fashion_field = params["fashion_field"]
    fashion.save
    redirect_to "/fashions"
  end

  def destroy
    fashion = Fashion.find_by(id: params["id"])
    fashion.delete
    redirect_to "/fashions"
  end

end
