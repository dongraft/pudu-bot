# Description:
#   Busca por restaurantes en Chile usando Yelp API 2.0.
#   Exclusivo para Mauricio Bot.
#
# Dependencies:
#   "yelp": "0.1.1"
#
# Configuration:
#   Yelp tokens: http://www.yelp.com/developers/getting_started/api_access
#
# Commands:
#   mauricio yelp <tipo_de_comida> en/cerca/cerca de <comuna/zona>)?
#
# Examples:
#   mauricio yelp vegetariano en providencia
#   mauricio yelp pizza cerca de el golf
#
# Author:
#   @jorgeepunan
#

consumer_key = "II7ox9sqSUe1qo6QzXphxQ"
consumer_secret = "Fwj7DmhtjnS_0fGEfKSWvBxqjBY"
token = "ek4LtD0_QwbKSxs8go1MNgP_o1Kpne_g"
token_secret = "731n3orAZfXl2iP1AK3TF2gxKPw"

respuestas = [':mauricio: ¡Ya sé!',':mauricio: ¡Lo tengo!',':mauricio: Intenta: ',':mauricio: Mira :point_down::skin-tone-3:',':mauricio: ¿Te tinca?']

yelp = require("yelp").createClient consumer_key: consumer_key, consumer_secret: consumer_secret, token: token, token_secret: token_secret

yelpMe = (msg, query, callback) ->
  yelp.search query, (error, data) ->
    callback(data) unless error

module.exports = (robot) ->
  robot.respond /yelp( me)? (.*) (en|cerca|cerca de) (.*)/i, (msg) ->
    msg.send '~·~ buscando ~·~'
    yelpMe msg, { term: msg.match[2], location: msg.match[4] + ', Chile' }, (data) ->
      if data.businesses.length > 0
        business = data.businesses[(Math.random() * data.businesses.length) >> 0]
        template = "#{business.name} que queda en #{business.location.address} y tiene calificación de #{business.rating}/5 por #{business.review_count} personas. Categoría: #{business.categories.join(",")}."
        msg.send msg.random respuestas
        msg.send template
      else
        msg.send ":mauricio: algo pasó y no sé qué fue. Intenta denuevo."
