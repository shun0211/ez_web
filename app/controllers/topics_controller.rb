class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    @learning_stages = Topic.learning_stages_i18n.values
  end
end
