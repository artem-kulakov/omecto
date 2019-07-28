# frozen_string_literal: true

class ParticipationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @participation = Participation.new(participation_params)
    @event_id = participation_params[:event_id]

    respond_to do |format|
      format.js { render 'participations/join_event' } if @participation.save
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def participation_params
    params.permit(:user_id, :event_id)
  end
end
