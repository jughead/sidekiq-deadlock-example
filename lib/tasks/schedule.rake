task schedule: :environment do
  FirstWorker.perform_async(1)
  SecondWorker.perform_async(1)
  require 'sidekiq/api'
  puts "#{Sidekiq::Queue.new.size} jobs scheduled"
end
