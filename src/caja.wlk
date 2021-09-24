import wollok.game.*

object caja {
	var property position = game.center()
	method image() = "caja.png"
	method subir(){
		position = position.up(1)
	}
	
	method movete() {
		//const x = 0.randomUpTo(game.width()).truncate(0)
		//const y = 0.randomUpTo(game.height()).truncate(0)
		const x = (0.. game.width()-1).anyOne() 
		const y = (0.. game.height()-1).anyOne() 
		position = game.at(x,y) 
	}
}