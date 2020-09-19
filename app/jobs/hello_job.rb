class HelloJob < ActiveJob::Base
  queue_as :'dev-incidents'

  def perform(name)
    puts "Hello, #{name}"
  end
end