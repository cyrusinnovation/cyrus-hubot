# Description:
#   Answers the important question.
#
# Dependencies:
#
# Commands:
#   hubot is it time for coffee
#   hubot is it coffee time
#
# Author:
#   msimpson
#
responses = [ "Yes", "Sure", "Of course.", "*duh!*" ]

sendResponse = (msg) ->
  msg.send msg.random responses

module.exports = (robot) ->
  robot.respond /is it coffee time/i, (msg) ->
    sendResponse(msg)

  robot.respond /is it time for coffee/i, (msg) ->
    sendResponse(msg)
