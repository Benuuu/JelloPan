class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    if @event.save
      redirect_to root_url
    else
      flash.now[:error] = '3rr0r'
      render 'new'
    end
  end

  def show
    redirect_to edit_event_path(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    event = Event.find(params[:id])
    event.update_attributes!(event_params)
    redirect_to root_url
  end

  def destroy
    @event = Event.find(params[:id]).destroy
    flash[:success] = "event deleted"
    redirect_to root_url
  end

  private
    def event_params
      params.require(:event).permit(:album, :event_date, :host, :ingredient)
    end

end
