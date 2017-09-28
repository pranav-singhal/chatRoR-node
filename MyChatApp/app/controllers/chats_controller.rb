class ChatsController < ApplicationController
  def user
    @user= User.new
  end
  def createuser
    # byebug
    if @user = User.create(set_params)
      return redirect_to controller: 'chats', action: 'index', id: @user.id
    end
  end

  def index
    # byebug

  end
  def create

    puts 'here'
    puts params["message"]
    puts chat_params
    puts 'here'
    user_id = User.where(username: chat_params["username"]).first.id
    @chat =Chat.create(user_id:user_id, chat: chat_params["message"])
    # puts @chat.errors.messages

  end

  private
  def set_params
    params.require(:user).permit(:username, :chat, :message)
  end
  def chat_params
    params.permit(:username, :chat, :message)
  end


end
