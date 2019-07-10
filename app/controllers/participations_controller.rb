class ParticipationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @participation = Participation.new(participation_params)
    @event_id = participation_params[:event_id]

    respond_to do |format|
      if @participation.save
        format.js { render 'participations/join_event' }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def participation_params
      params.permit(:user_id, :event_id)
    end
end
