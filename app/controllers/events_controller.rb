class EventsController < ApplicationController


    def index
        @events=Event.all
    end

    def show
        @event=Events.find(params[:id])
    end














    private
    ##def params
      ##  params.require(:id)
    ##end

end
