class AnswersController < ApplicationController

  def update
    answer = Answer.find(params[:id])
    answer.answer_one = params[:answer][:answer_one]
    answer.answer_two = params[:answer][:answer_two]

    if answer.save
      redirect_to tests_path, notice: "Success!"
    end
  end

end