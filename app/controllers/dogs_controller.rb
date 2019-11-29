class DogsController < ApplicationController
  before_action :reset_cache, only: :show

  def show
    @dog = Dog.find(params[:id])
    @dog_owner = @dog.user
    @user = current_user
    @first_message = Message.first_between(@dog_owner, @user)
    @chat_room = nil
    if @first_message
      @chat_room = @first_message.chat_room
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  # Important to never load dogs#show from cache as the "Talk" button
  # contains different links depending on message history between users
  # This method set response headers that signal client to never cache the view
  # It's a hack, but an necessary one. NEVER REMOVE!
  def reset_cache
    response.headers["Cache-Control"] = "no-cache, no-store"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end
end
