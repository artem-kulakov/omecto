class ParticipationsController < ApplicationController
  def new
    @participation = Participation.new(participation_params)

    respond_to do |format|
      if @participation.save
        format.html { redirect_to events_path, notice: 'Participation was successfully created.' }
        format.json { render :show, status: :created, location: @participation }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def participation_params
      params.permit(:user_id, :event_id)
    end
end
