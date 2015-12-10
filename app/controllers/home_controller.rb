class HomeController < ApplicationController

  def show
    @quiz = Quiz.new
  end

end