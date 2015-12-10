class QuizzessController < ApplicationController

  def new

  end

  def index

  end

  def create

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