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
      questions_array = @quiz.generate_questions(quiz_params['size'].to_i)
      @quiz.questions << questions_array
      redirect_to quiz_path(@quiz)
    else
      redirect_to new_quiz_path
      flash.keep[:danger] = 'You must enter an integer greater than 0.'
    end
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  private

  def quiz_params
    params.require(:quiz).permit(:size)
  end

end