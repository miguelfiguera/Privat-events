class InvitationsController < ApplicationController

    def index
        @invitations=Invitation.all 
    end

    def show
        @invitation=Invitation.find(params[:id])
    end

    def new
        @invitation=Invitation.new 
    end

    def create
        @invitation=current_user.invitations.build(invitation_params)

       
        if @invitation.save
            redirect_to root_path
          else
            render :new
          end 
    end

    def edit
        @invitation=Invitation.find(current_user.id)
    end

    def update
        @invitation=Invitation.find(params[:id])

        if @invitation.update(invitation_params)
            redirect_to root_path
        else
            redirect_to root_path
        end
    end


    private
    def invitation_params
        params.require(:invitation).permit(:user_id,:event_id,:acceptance)
    end
end
