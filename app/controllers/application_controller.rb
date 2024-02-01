class ApplicationController < ActionController::Base
  def slack_notifier
    @slack_notifier ||= Slack::Notifier.new(ENV['SLACK_WEBHOOK_URL'], username: "通知 Bot", icon_emoji: ':sunglasses:')
  end

  def after_sign_in_path_for(_)
    topics_path
  end
end
