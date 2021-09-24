import wollok.game.*

// Con propiedad
object wollok {
  var property position = game.origin()
  const version = "1.7.0"
  const lastUpdated = new Date()
  
  method image() = "wollok.png"
  
  method howAreYou() = "I am Wolloktastik!"
  
  method mostrarAtributos() {
  	game.showAttributes(self)
  }
  
  method esconderAtributos() {
  	game.hideAttributes(self)
  }

  method centrar() {
    position = game.center()
  }
  
  method subir() {
    position = position.up(1) 
  }

  // se mueve una determinada cantidad de posiciones en diagonal principal
  method enDiagonal(cantidadPosiciones) { 
    position = position.up(cantidadPosiciones).right(cantidadPosiciones) 
  }
}

// Con método 
object wollokV2 {
  var centrado = false
  method position() = if (centrado) game.center() else game.origin()

  method centrar() {
    centrado = true
  }

  method image() = "wollok.png"
}