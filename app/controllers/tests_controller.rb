class TestsController < ApplicationController

  before_filter :authenticate_user!, :only => [:new, :index]

  def index
    @tests = Test.all
  end

  def show
    @test = Test.find_by_id(params[:id])
    @answer = Answer.new(test_id: @test.id)
    @response = Answer.where("test_id == ?", @test.id)
  end

  def has_test?(test)
    self.test.exists?(:id == test.id)
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    respond_to do |format|
      if @test.save
        format.html { redirect_to @test, notice: 'Test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @test }
      else
        format.html { render action: 'new' }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def test_params
    params.require(:test).permit(:title, :description, :question_one, :question_two)
  end

end