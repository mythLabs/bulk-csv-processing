class ReadCsvJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    p 'read csv job ran'
  end
end
