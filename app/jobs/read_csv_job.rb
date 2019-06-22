class ReadCsvJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    i = 0
    [1,3,5,6,7,8].each do |ele|
      sleep(5)
      i = i + 1
      ActionCable.server.broadcast "csv_read_updates_channel:admin_1", {message: "#{i}"}
    end

    p 'read csv job ran'
  end
end
