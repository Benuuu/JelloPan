class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to root_url
    else
      flash.now[:error] = '3rr0r'
      render 'new'
    end
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    if @event.update_attributes(params[:event])
      flash[:success] = "event updated"
      redirect_to root_url
    else
      render 'edit'
    end
  end
  
  def destroy
    @event = Event.find(params[:id]).destroy
    flash[:success] = "event deleted"
    redirect_to root_url
  end
  
end
