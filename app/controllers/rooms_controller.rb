class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end
  
  def new
    @room = Room.new
  end
  
  def create
    @room = Room.new(name: params[:name], introduction: params[:introduction], price: params[:price], address: params[:address], img: params[:img])
    @room.image_name = "#{@room.id}.jpg"
    if @room.save
      redirect_to :rooms
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end


  def update
  end

  def destroy
  end
end
