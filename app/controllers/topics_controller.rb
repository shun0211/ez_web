class TopicsController < ApplicationController
  before_action :authenticate_user!

  def index
    @topics = Topic.all
    @learning_stages = Topic.learning_stages_i18n.values
  end
end
