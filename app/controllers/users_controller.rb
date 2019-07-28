# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: [:show]

  def show
    senders = Connection.where(recipient_id: @user.id).map(&:sender_id)
    recipients = Connection.where(sender_id: @user.id).map(&:recipient_id)
    friends_ids = senders + recipients
    @friends = User.find(friends_ids)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:id)
  end
end
