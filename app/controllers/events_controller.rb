class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
    @categories = [
      { title: 'Food & Drinks', image: '/images/event-icon1.png' },
      { title: 'Night Life', image: '/images/event-icon2.png' },
      { title: 'Outdoors & Adventure', image: '/images/event-icon3.png' },
      { title: 'Tech', image: '/images/event-icon4.png' },
      { title: 'Self Improvement', image: '/images/event-icon5.png' },
      { title: 'Sports', image: '/images/event-icon6.png' },
      { title: 'Learning', image: '/images/event-icon7.png' },
      { title: 'Travel', image: '/images/event-icon8.png' },
      { title: 'Music & Dance', image: '/images/event-icon9.png' },
      { title: 'Single\'s Only', image: '/images/event-icon10.png' },
      { title: 'Family', image: '/images/event-icon11.png' },
      { title: 'Health & Wellness', image: '/images/event-icon12.png' },
      { title: 'Hobbies & Crafts', image: '/images/event-icon13.png' },
      { title: 'Fashion & Beauty', image: '/images/event-icon14.png' },
      { title: 'Film', image: '/images/event-icon15.png' },
      { title: 'Beliefs', image: '/images/event-icon16.png' },
      { title: 'LGBTQ', image: '/images/event-icon17.png' },
      { title: 'Language & Culture', image: '/images/event-icon18.png' },
      { title: 'Photography', image: '/images/event-icon19.png' },
      { title: 'Book Club', image: '/images/event-icon20.png' },
      { title: 'Pets', image: '/images/event-icon21.png' },
      { title: 'Arts', image: '/images/event-icon22.png' },
      { title: 'Seminar & Talks', image: '/images/event-icon23.png' },
      { title: 'Freelance Community', image: '/images/event-icon24.png' },
    ]
  end

  # GET /events/1/edit
  def edit
  end

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
      params.require(:event).permit(:title, :categories, :description, :city, :address, :date, :user_id)
    end
end
