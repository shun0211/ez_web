class ApplicationController < ActionController::Base
  def current_user
    @current_user ||= User.find_by(email: "test@example.com")
  end

  def slack_notifier
    @slack_notifier ||= Slack::Notifier.new(ENV['SLACK_WEBHOOK_URL'], username: "通知 Bot", icon_emoji: ':sunglasses:')
  end
end
