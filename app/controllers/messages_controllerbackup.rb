class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    message = Message.create message_params
    @current_user.messages << message
    # @thing = Thing.find params[:thing_id]
    @thing = Thing.find params[:message][:thing_id]

    @thing.messages << message
    # raise 'hell'
    redirect_to things_path
  end

  def show
    @message = Message.find params[:id]
    @thing = Thing.find (@message.thing_id)
    @messages = Message.all
    @thread = Message.where(thing_id: @thing.id).where(user_id: [ @message.user.id,  @current_user.id, @thing.user.id])
    @reply = Message.new
    # raise 'hell'
  end

  def index
    @messages = Message.all
    @things = Thing.all
    # raise 'hell'
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def message_params
    params.require(:message).permit( :message, :subject, :to_id, :thing_id)
  end
end
