# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Test SQS


json_data = { mail_to: 'joydeep.banerjee@quantuminventions.com', subject: "test mail", base_host: "sg.trip-staging.mapsynq.com", username: "Joy Banerjee"}.to_json

  UserMailer.password_change_notification(json_data).deliver_later


  use dev-mailers for last one