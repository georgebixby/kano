class Answer < ActiveRecord::Base
  belongs_to :test
  def calculate_result(answer_one, answer_two)
    result = ""
    if answer_one == "I expect it to be that way." && answer_two == "I dislike it that way." || answer_one == "I am neutral." && answer_two == "I dislike it that way." || answer_one == "I can live with it that way." && answer_two == "I dislike it that way."
      result = "Must-be"
    elsif answer_one == "I like it that way." && answer_two == "I expect it to be that way." || answer_one == "I like it that way." && answer_two == "I am neutral." || answer_one == "I like it that way." && answer_two == "I can live with it that way."
      result = "Attractive"
    elsif answer_one == "I expect it to be that way." && answer_two == "I like it that way." || answer_one == "I am neutral." && answer_two == "I like it that way." || answer_one == "I can live with it that way." && answer_two == "I like it that way." || answer_one == "I dislike it that way." && answer_two == "I like it that way." || answer_one == "I dislike it that way." && answer_two == "I expect it to be that way." || answer_one == "I dislike it that way." && answer_two == "I am neutral." || answer_one == "I dislike it that way." && answer_two == "I can live with it that way."
      result = "Undesired"
    elsif answer_one == "I expect it to be that way." && answer_two == "I expect it to be that way." || answer_one == "I expect it to be that way." && answer_two == "I am neutral." || answer_one == "I expect it to be that way." && answer_two == "I can live with it that way." || answer_one == "I am neutral." && answer_two == "I expect it to be that way." || answer_one == "I am neutral." && answer_two == "I am neutral." || answer_one == "I am neutral." && answer_two == "I can live with it that way."
      result = "Unimportant"
    elsif answer_one == "I like it that way." && answer_two == "I like it that way." || answer_one == "I dislike it that way." && answer_two == "I dislike it that way."
      result = "Inconclusive"
    end
  end
end
