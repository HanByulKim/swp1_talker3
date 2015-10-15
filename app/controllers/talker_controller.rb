class TalkerController < ApplicationController
  def index
    @chats = Chat.all
  end
  
  def create
    talk = Talk.where(ask: params[:ask]).sample
    
    if talk == nil
      redirect_to '/learn'
    else
    Chat.create(chat_type: "human", chat_content: talk.ask)
    Chat.create(chat_type: "bot", chat_content: talk.answer)
    redirect_to :root
    end
end
end