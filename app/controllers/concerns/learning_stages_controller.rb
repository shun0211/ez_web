class LearningStagesController < ApplicationController
  def new
    @learning_stage = LearningStage.new
  end
end