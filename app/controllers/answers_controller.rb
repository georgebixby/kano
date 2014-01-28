class AnswersController < ApplicationController

  def create
    answer = Answer.new(test_id: params[:test_id])
    answer.answer_one = params[:answer][:answer_one]
    answer.answer_two = params[:answer][:answer_two]

    if answer.save
      redirect_to tests_path, notice: "Success!"
    end
  end

end