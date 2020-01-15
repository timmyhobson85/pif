class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    # raise 'hell'
    message = Message.create message_params
    @current_user.sent_messages << message
    #find recipient user
    #@recieveuser.receieved_messages << message


    # @thing = Thing.find params[:thing_id]

    # raise 'hell'
    redirect_back fallback_location: @root
  end

  def show
    @message = Message.find params[:id]

    if @message.sender == @current_user
      @other = @message.recipient
    else
      @other = @message.sender
    end

    # @thing = Thing.find (@message.thing_id)
    @thread = Message.where(sender_id: [@message.sender_id, @message.recipient_id], recipient_id:[@message.sender_id, @message.recipient_id], thing_id: @message.thing.id )
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
    params.require(:message).permit( :message, :subject, :thing_id, :recipient_id)
  end
end
