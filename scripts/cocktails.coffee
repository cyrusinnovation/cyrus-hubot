randomDrinkUrl = "http://www.thecocktaildb.com/api/json/v1/1/random.php"

module.exports = (robot) ->
  getDrink = (msg) ->
    robot.http(randomDrinkUrl).get() (err, res, body) ->
      drinks = JSON.parse body
      drink = drinks.drinks[0]

      name = drink['strDrink']
      thumb = drink['strDrinkThumb']

      msg.send "#{name} #{thumb}"


  robot.respond /make me a drink/i, (msg) ->
    getDrink msg

  robot.hear /I need a drink/i, (msg) ->
    getDrink msg
