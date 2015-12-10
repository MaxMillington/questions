class QuizzesController < ApplicationController

  def new
    @quiz = Quiz.new
  end

  def index
    @quizzes = Quiz.all
  end

  def create
    @quiz = Quiz.new(quiz_params)

    if @quiz.save
      redirect_to quiz_path(@quiz)
    else
      redirect_to new_quiz_path
      flash.keep[:danger] = 'You must enter an integer greater than 0.'
    end
  end

  def update

  end

  def edit

  end

  private

  def quiz_params
    params.require(:quiz).permit(:size)
  end

end