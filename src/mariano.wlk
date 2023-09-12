import golosinas.*

object mariano {
	var bolsa = []
	
	method bolsa() = bolsa
	
	method comprar(unaGolosina){
		bolsa.add(unaGolosina)
	}
	method desechar(unaGolosina){
		bolsa.remove(unaGolosina)
	}
	method cantidadDeGolosinas() = bolsa.size()
	method tieneLaGolosina(unaGolosina) = bolsa.contains(unaGolosina)
	method probarGolosinas(){
		bolsa.forEach({ golosina => golosina.darMordisco() })
	}
	method hayGolosinaSinTACC() = bolsa.any({ golosina => not golosina.tieneGluten()})
	method preciosCuidados() = bolsa.all({ golosina => golosina.precio() <= 10})
	method golosinaDeSabor(unSabor) = bolsa.find({ golosina => golosina.gusto() == unSabor})
	method golosinasDeSabor(unSabor) = bolsa.filter({ golosina => golosina.gusto() == unSabor })
	method sabores() = bolsa.map({g => g.gusto()}).asSet()
	method gustosFaltantes(todosLosSabores){
		return todosLosSabores.asSet().difference(self.sabores())
	}
	method golosinaMasCara(){
		return bolsa.max({g => g.precio()})
	}
	
}













