class UserMailer < ApplicationMailer
  def password_change_notification(json_data)
    data = JSON.parse(json_data).with_indifferent_access
    # setup_host(data[:base_host])

    @subject  = data[:subject]
    @username = data[:username]

    mail(to: data[:mail_to], subject: @subject)
  end
end
