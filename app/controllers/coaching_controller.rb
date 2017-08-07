class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
      if question.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif question == "I am going to work right now!"
      return "Good luck!"
    else
      return "I don't care my boy!"
    end
  end

  def ask
  end
end
