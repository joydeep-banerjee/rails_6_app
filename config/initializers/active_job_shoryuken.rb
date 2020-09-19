Rails.application.configure do
  if Rails.env.staging?
    # For 'Staging' and "Production" use 'shoryuken' adapter 
    config.active_job.queue_adapter = :shoryuken
    # config.active_job.queue_name_prefix = "dev"
    # config.active_job.queue_name_delimiter = "-"
  else
    # Use default active job 'inline' adapter for 'Test' and 'Development' environments
    config.active_job.queue_adapter = :inline
  end
end