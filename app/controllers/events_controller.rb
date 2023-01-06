class EventsController < ApplicationController
    before_action :authenticate_user!, except: [:index,:show]


    def index
        @events=Event.all
    end

    def show
        @event=Event.find(params[:id])
    end


    def new
        @event=Event.new
    end

    def edit
        @event=Event.find(params[:id])
    end

    def update
        @event=Event.find(params[:id])

        if @event.update(event_params)
            redirect_to root_path
        else
            redirect_to root_path
        end
    end
    
    def create
        @event = current_user.events.build(event_params)
    
        if @event.save
          redirect_to root_path
        else
          render :new
        end
    end

    def delete
        @event=Event.find(params[:id])
        @event.delete
    end


    private
    def event_params
        params.require(:event).permit(:title,:description,:date,:exclusive)
    end

end
