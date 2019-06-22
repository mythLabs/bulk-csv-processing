class CsvReadUpdatesChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "csv_read_updates_channel:#{current_user}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
