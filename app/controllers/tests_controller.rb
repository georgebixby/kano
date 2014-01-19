class TestsController < ApplicationController

  def index
    @tests = Test.all
  end

  def show
    @test = Test.find(params[:id])
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    respond_to do |format|
      if @test.save
        format.html { redirect_to @test, notice: 'Book was successfully created.' }
        format.json { render action: 'show', status: :created, location: @test }
      else
        format.html { render action: 'new' }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  def test_params
    params.require(:test).permit(:title, :description, :question_one, :question_two)
  end

end