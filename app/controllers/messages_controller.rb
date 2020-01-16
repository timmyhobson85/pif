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
    @thread = Message.where(sender_id: [@message.sender_id, @message.recipient_id], recipient_id:[@message.sender_id, @message.recipient_id], thing_id: @message.thing.id ).order(id: :desc)
    @reply = Message.new
    # raise 'hell'
  end

  def index
    @messages = Message.all
    @things = Thing.all
    # @thing_messages_incoming = Message.where.not(sender: @current_user, @thing.user: @current_user).order(:sender_id)
    # @thing_messages = Message.where(recipient_id: @current_user.id).order(:sender_id)
    # # @current_user_messages = Message.where(sender_id:@current_user.id || recipient_id:@current_user )
    # @msgs = Message.where( sender_id: @current_user.id ).or( Message.where( recipient_id: @current_user.id )  ).group_by( &:thing )
    # # raise 'hell'
    # @thing_messages_outgoing = Message.where.not(recip: @current_user).where(thing_id: @thing.id).order(:sender_id)

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
