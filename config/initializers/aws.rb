Aws.config.update({ 
  region:      "region",
  credentials: Aws::Credentials.new("access_key", "secret_key")
})

sqs = Aws::SQS::Client.new(
  region:      "region",
  credentials: Aws::Credentials.new("access_key", "secret_key")
)
# sqs.create_queue({queue_name: 'default'})
# sqs.create_queue({queue_name: 'default'})