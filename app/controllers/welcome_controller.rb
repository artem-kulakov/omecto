# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @categories = Category.all
  end

  def about; end
end
