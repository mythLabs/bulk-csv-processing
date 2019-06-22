require 'csv'

class ReadCsvJob < ApplicationJob
  queue_as :default

  def perform(*args)
    
    
     i = 0
    CSV.foreach(args.first) do |line|
      
      sleep(3)
      i =i +1
      ActionCable.server.broadcast "csv_read_updates_channel:admin_1", {message: "#{((i).to_f/ CSV.foreach(args.first).count.to_f)*100}"}

      
    end

    p 'read csv job ran'
  end
end
