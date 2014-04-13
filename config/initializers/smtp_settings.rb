# To enable smtp email delivery for your GitLab instance do next:
# 1. Change config/environments/production.rb to use smtp
#    config.action_mailer.delivery_method = :smtp
# 2. Rename this file to smtp_settings.rb
# 3. Edit settings inside this file
# 4. Restart GitLab instance
#
Gitlab::Application.config.action_mailer.delivery_method = Settings.gitlab.email.delivery_method.to_sym
if Gitlab::Application.config.action_mailer.delivery_method == :smtp
  ActionMailer::Base.smtp_settings = Settings.gitlab.email.smtp_settings
end

p "!!! #{ActionMailer::Base.smtp_settings.inspect}"