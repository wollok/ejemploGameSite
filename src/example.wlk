import wollok.game.*

object caja {
	var property position = game.center()
	method image() = "caja.png"
	method movete() {
		const x = 0.randomUpTo(game.width() - 1).truncate(0)
		const y = 0.randomUpTo(game.height() - 1).truncate(0)
		position = game.at(x,y)
	}
}


object wollok {
	var property position = game.origin()
	method howAreYou() = "I am fine!"
	method irAlInicio() {
		position = game.origin()
	}
}