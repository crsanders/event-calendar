class EventsController < ApplicationController
  def index
    @events = Event.paginate(page: params[:page])
  end
  
  def new
    @event = Event.new
  end
    
  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = "Event Created!"
      redirect_to event_url(@event)
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  private

    def event_params
      params.require(:event).permit(:name, :date, :time, :description, :available)
    end
end
