class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    message = Message.create message_params
    @current_user.messages << message
    redirect_to messages_path
  end

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
    params.require(:message).permit( :message, :subject, :to_id )
  end
end
