class LearnController < ApplicationController
  def index
    @talks = Talk.all
  end

  def create
    my_ask = params[:ask]
    my_answer = params[:answer]
    my_pic = params[:picurltalk]

    Talk.create(ask: my_ask, answer: my_answer, picurltalk: my_pic)

    redirect_to '/learn'
  end
end