class ConnectionsController < ApplicationController
  def new
    @connection = Connection.new(connection_params)

    respond_to do |format|
      if @connection.save
        format.js { render 'connections/new' }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def connection_params
      params.permit(:sender_id, :recipient_id)
    end
end
