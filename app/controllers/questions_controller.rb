class QuestionsController < ApplicationController
  def index
    @topics = Topic.all.order(:created_at)
    @questions = Question.all.order(:created_at)
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to @question
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  private

  def question_params
    params.require(:question).permit(:title, :content).merge(user: current_user)
  end
end