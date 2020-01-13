class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    message = Message.create message_params
    @current_user.messages << message
    @thing = Thing.find params[:message][:thing_id]
    @thing.messages << message
    # raise 'hell'
    redirect_to messages_path
  end

  # def createreply
  #   @message = Message.find params[:id]
  #   @reply = Message.create reply_params
  #   @current_user.messages << reply
  #   @thing = Thing.find params[:thing_id]
  #   @thing.messages << reply
  # end

  def show
    @message = Message.find params[:id]
    @reply = Message.new
  end

  def index
    @messages = Message.all
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
