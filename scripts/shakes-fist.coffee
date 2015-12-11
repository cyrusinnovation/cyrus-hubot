# Description:
#  BARROWMAN!!!!
#
# Dependencies:
#
# Commands:
#   shakes fist
#
# Author:
#   msimpson
#
responses = [
  "http://chapleau.us/Img/GrandpaAngry-2.jpg",
  "https://38.media.tumblr.com/53addab559a282e53dca052134b31b47/tumblr_inline_nv6e3jIOVs1qebcl8_500.gif",
  "https://media2.giphy.com/media/l41lFU69ZXu03qWrK/200_s.gif",
  "http://i.imgur.com/wEuNzzK.gif",
  "http://reactimg.com/images/124.png",
]

sendResponse = (msg) ->
  msg.send msg.random responses

module.exports = (robot) ->
  robot.hear /shakes fist/i, (msg) ->
    sendResponse(msg)
