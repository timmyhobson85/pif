class ThingsController < ApplicationController
  def new
    @thing = Thing.new
  end

  def create
    thing = @current_user.things.create thing_params
    redirect_to things_path
  end

  def index
    @things = Thing.all
  end

  def show
    @thing = Thing.find params[:id]
    @message = Message.new
    @thing_messages = Message.where(thing_id: @thing.id).order(:sender_id)
    @thing_messages_incoming = Message.where.not(sender: @current_user).where(thing_id: @thing.id).order(:sender_id)
    @things = Thing.all
    # binding.pry
    # raise 'hell'
  end

  def edit
    @thing = Thing.find params[:id]
    # check_ownership
  end

  def needitem
    @thing = Thing.new
    # check_ownership
  end
  def needtask
    @thing = Thing.new
    # check_ownership
  end
  def offeritem
    @thing = Thing.new
    # check_ownership
  end
  def offertask
    @thing = Thing.new
    # check_ownership
  end

  def update
    puts params
    @thing = Thing.find params[:id]
    # redirect_to login_path and return unless @thing.user == @current_user
    @thing.update thing_params
    redirect_to thing_path @thing.id
  end

  def destroy
    Thing.destroy params[:id]
    redirect_to things_path
  end

  def map
    @things = Thing.select(:name, :latitude, :longitude)
  end

  private

  def thing_params
    params.require(:thing).permit(:name, :act, :quantity, :image, :user_id, :condition, :urgency, :location, :description, :thing_type)
  end

  def check_ownership
    redirect_to login_path and return unless @thing.user == @current_user
  end
end
