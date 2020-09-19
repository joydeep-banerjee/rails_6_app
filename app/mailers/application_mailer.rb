class ApplicationMailer < ActionMailer::Base
  self.deliver_later_queue_name = 'dev-incidents'
  # queue_as :'dev-incidents'
  # default from: 'from@example.com'
  default from:'noreply@mapsynq.com'
  layout 'mailer'
end
