App.csv_read_updates = App.cable.subscriptions.create "CsvReadUpdatesChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) -> $('#progress').append(data['message'])
    # Called when there's incoming data on the websocket for this channel
