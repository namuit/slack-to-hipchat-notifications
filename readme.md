# Slack To Hipchat notifications

This is a Working in Progress.

## Deploying on Heroku

To get your own Slack To Hipchat notification Incoming Webhooks on Heroku, click the button below:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/namuit/slack-to-hipchat-notifications/tree/master)

Fill out the form, and you should be cooking with gas in a few seconds.

### Things you should know

You can use as slack incoming webhooks your own app using this syntax

    http://:appname.herokuapp.com/services/:roomId/:apiToken/:authToken

- appname: the subdomain in heroku / the app name
- roomId: the ID of the room
- apiToken: the API token with notification permission for hipchat
- authToken: the auth token generated as environments variable.

For example

    http://shrouded-mountain-12345.herokuapp.com/services/12345/FGDFGDFGDFGDFGD/GDSFGSDFGSDFSDFDSF

