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

  private
  def set_params
    params.require(:user).permit(:username)
  end
end
