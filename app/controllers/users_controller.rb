class UsersController < ApplicationController


  def show
    if params["id"] != session[:user_id].to_s
      redirect_to "/", notice: "Permission Not Granted"
    end
  end

  def index
    @users = User.all.order('email')
  end

  def new # /users/new
    @user = User.new
  end


  def update
    user = User.find_by(id: params["id"])
    user.email = params["email"]
    user.password = params["password"]
    user.save
    redirect_to "/intros/index"
  end

  def destroy
    user = User.find_by(id: params["id"])
    user.delete
    redirect_to "/intros/index"
  end

  def create # POST /users
    @user = User.new
    @user.name = params["name"]
    @user.email = params["email"]
    @user.password = params["password"]

    if @user.save
      redirect_to "/", notice: "Thanks for signing up"
    else
      render 'new'
    end
  end



end
