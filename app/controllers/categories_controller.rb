class CategoriesController < ApplicationController
  before_action :set_event, only: [:show]

  def show
    @events = Event.where("categories like ?", "%#{@category.cat_id}%")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      # params.require(:category).permit(:title, :categories, :description, :city, :address, :date, :user_id)
    end
end
