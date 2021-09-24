import wollok.game.*

object paleta {
	const property verde = "00FF00FF"
	const property rojo = "FF0000FF"
}

object pepita {
	
	var property position = game.center()
	
	method image() = "pepita.png"
	
	method text() = "¡Pepita!"
	
	method textColor() = paleta.verde()
}