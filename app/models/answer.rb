class Answer < ActiveRecord::Base
  belongs_to :test
  def calculate_result(answer_one, answer_two)
    result = ""
    if
      answer_one == "I expect it to be that way." && answer_two == "I dislike it that way." ||
      answer_one == "I am neutral." && answer_two == "I dislike it that way." ||
      answer_one == "I can live with it that way." && answer_two == "I dislike it that way."
      result = "mustbe"
    end
  end
end
