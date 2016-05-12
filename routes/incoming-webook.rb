post '/services/:roomId/:apiToken/:authToken' do
  pass unless request.accept? 'application/json'
  body = JSON.parse request.body.read
  client = HipChat::Client.new(params[:apiToken], api_version: 'v2')
  notification_from = !body['username'].nil? ? body['username'] : ENV['NOTIFICATION_USERNAME']
  notification_message = body['text']
  notification_format = 'text'

  client[params[:roomId]].send(
    notification_from,
    notification_message,
    {color: ENV['NOTIFICATION_COLOR'], notify: ENV['NOTIFICATION_NOTIFY'], message_format: notification_format}
  )

  status 200
end
