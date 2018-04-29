class IntrosController < ApplicationController

def index
  @art = Art.find_by(id: params["id"])
  @design = Design.find_by(id: params["id"])
end


end
