class QuestionsController < ApplicationController
  def index
    @topics = Topic.all.order(:created_at)
    @questions = Question.all.order(:created_at)
  end

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
  end
end