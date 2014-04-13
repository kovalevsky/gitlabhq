Gitlab::Application.config.action_mailer.delivery_method = Settings.gitlab.email.delivery_method.to_sym
if Gitlab::Application.config.action_mailer.delivery_method == :smtp
  ActionMailer::Base.smtp_settings = Settings.gitlab.email.smtp_settings
end
