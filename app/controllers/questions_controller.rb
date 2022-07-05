class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:answer]
    @answer = ""
    if @question.downcase == "i am going to work right now!"
      @answer = "GREAT"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    # elsif @question == "time"
    #   @answer = "<%= Time.now %>"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
  def time
  end
end
