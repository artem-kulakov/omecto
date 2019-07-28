# frozen_string_literal: true

class CategoriesController < ApplicationController
  before_action :set_event, only: [:show]

  def show
    @events = Event.where('categories like ?', "%#{@category.cat_id}%")
    render 'events/index'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @category = Category.find(params[:id])
  end
end
