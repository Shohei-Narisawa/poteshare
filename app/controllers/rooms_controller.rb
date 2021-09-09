class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end
  
  def new
    @room = Room.new
  end
  
  def create
    @room = Room.new(name: params[:name], introduction: params[:introduction], price: params[:price], address: params[:address])
    if image = params[:image]
      @room.image_name = "#{@room.id}.jpg"
      image = params[:image]
      File.binwrite("public/room_images/#{@room.image_name}", image.read )
    end
    
    if @room.save
      redirect_to :rooms
    else
      render "new"
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit
  end


  def update
  end

  def destroy
    @room = Room.find_by(id: params[:id])
    @room.destroy
    redirect_to :rooms
  end
end
