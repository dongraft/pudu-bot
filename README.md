# Mr. Pudú

El señor Pudú es un bot basado en [Hubot](https://hubot.github.com/) para [Hashtag Chile](http://hashtagchile.com) ([canal en Slack](http://hashtagchile.slack.com)).
Tiene todas las funciones básicas de Hubot, más algunas que se le irán ido agregando para hacerlo más inteligente. Para consultar cuáles son las cosas que trae, puedes hablarle públicamente así: `@mauricio help`, si quieres preguntarle en privado, debes ir a *direct messages*, hablarle al bot y simplemente decir: `help`.  Normalmente es muy rápido, a menos que esté ocupado en otra cosa.

## ¿Qué comandos sabe?

Si la paciencia no te da, puedes ir a [esta URL](http://mauricio.herokuapp.com/mauricio/help), en esa lista se irán actualizando los comandos que sepa.

## Contribuir

El repositorio queda abierto para todos los miembros de [Hashtag Chile en GitHub](https://github.com/hashtagchile), si quieres agregar alguna función sigue los pasos 👇👇👇

### Pasos:

- Forkea y clona este repo en tu local.
- `$ cd path/to/mauricio-bot`
- `$ npm install` (probablemente sea mejor usar `sudo`).
- Haz tu código JS (o CoffeeScript) y déjalo en `mauricio-bot/scripts`. Para más info sobre *Hubot* consulta [Hubot Documentation > Scripting](https://hubot.github.com/docs/scripting/). **No olvides documentar tu código**.
- Para probar tus cambios localmente: `$ bin/hubot` y activarás a mauricio y podrás invocarlo junto con [sus comandos](http://mauricio.herokuapp.com/mauricio/help) y los que hayas escrito.
- Para enviarlo a Heroku, haz un _pull request_, coméntalo en Slack canal *#mauricio-devs* y será revisado, testeado, linteado y si pasa los rigurosos tests será activado.

---

![mauriciocito](http://petitecurie.com/wp-content/uploads/2013/05/mauricio1.jpg)
