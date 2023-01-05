class InvitationsController < ApplicationController

    def index
        @invitations=Invitation.all 
    end

    def show
        @invitation=Invitation.find(params)
    end


    private
    def params
        params.require(:invitation).permit(:user_id,:event_id)
    end
end
