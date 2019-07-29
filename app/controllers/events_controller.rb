# frozen_string_literal: true

class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: [:index]

  # GET /events
  # GET /events.json
  def index
    ip = request.remote_ip
    ip = '83.220.236.196' if ip == '::1'
    location = Geocoder.search(ip).first
    city = location.city + ', ' + location.country

    @participations = Participation.all

    category = params[:category]

    if params['distance'].nil?
      @word = ''
      @distance = 20_000
      @city = city
      @events = select_events_for @word, @distance, @city, category
    else
      @word = params[:word]
      @distance = params[:distance]

      @city = if params[:city] == ''
                city
              else
                params[:city]
              end

      @events = select_events_for @word, @distance, @city, category

      respond_to do |format|
        format.js { render 'events/update_view' }
      end
    end

    @distances = {
      '5 КМ' => 5,
      '10 КМ' => 10,
      '25 КМ' => 25,
      '50 КМ' => 50,
      '100 КМ' => 100,
      '150 КМ' => 150,
      '> 150 КМ' => 20_000
    }
  end

  def select_events_for(word, distance, city, category)
    location_ids = []

    Location.near(city, distance, units: :km).each do |location|
      location_ids << location.id
    end

    temp = Event.where('lower(title) LIKE ? OR lower(description) LIKE ?', "%#{word.downcase}%", "%#{word.downcase}%")

    if category
      events_ids = []
      event_categories = EventCategory.where(category_id: category).each { |item| events_ids << item.event_id }

      if event_categories.any?
        temp = temp.where(id: events_ids)
      end
    end

    temp.where(location_id: location_ids)
  end

  # GET /events/1
  # GET /events/1.json
  def show; end

  # GET /events/new
  def new
    @event = Event.new
    @event.build_location
    @event.event_categories.build
    @categories = Category.all
  end

  # GET /events/1/edit
  def edit; end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to events_path, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:event).permit(:title, :categories, :description, :address, :date, :user_id, :image, :location_id, location_attributes: [:city], event_categories_attributes: %i[id category_id])
  end
end
