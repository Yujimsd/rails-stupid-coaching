class QuestionsControllerController < ApplicationController
  def ask
    @asked = params

  end

  def answer
    p @answer = params["question"]
    if @answer == "I am going to work"
      @answer = "Great!"
    elsif @answer.last == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end

  end
end
