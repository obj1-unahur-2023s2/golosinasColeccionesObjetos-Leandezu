
object bombon{
	var peso = 15
	var gusto = "frutilla"
	var tieneGluten = false
	
	method precio() = 5
	method peso() = peso
	method gusto() = gusto
	method tieneGluten() = tieneGluten
	
	method darMordisco(){
		peso = peso - (peso * 0.2) - 1
	}
	
}

object alfajor{
	var peso = 300
	var gusto = "chocolate"
	var tieneGluten = true
	
	method precio() = 12
	method peso() = peso
	method gusto() = gusto
	method tieneGluten() = tieneGluten
	
	method darMordisco(){
		peso = peso - (peso * 0.2)
	}
}

object caramelo{
	var peso = 5
	var gusto = "frutilla"
	var tieneGluten = false
	
	method precio() = 1
	method peso() = peso
	method gusto() = gusto
	method tieneGluten() = tieneGluten
	
	method darMordisco(){
		peso = peso - 1
	}
}

object chupetin{
	var peso = 2
	var gusto = "naranja"
	var tieneGluten = false
	
	method precio() = 2
	method peso() = peso
	method gusto() = gusto
	method tieneGluten() = tieneGluten
	
	method darMordisco(){
		if(peso > 2){
			peso = peso - (peso * 0.1)
		}
	}
}

object oblea{
	var peso = 250
	var gusto = "vainilla"
	var tieneGluten = true
	
	method precio() = 5
	method peso() = peso
	method gusto() = gusto
	method tieneGluten() = tieneGluten
	
	method darMordisco(){
		return if(peso > 70){peso = (peso / 2)}else{peso = peso - (peso * 0.25)}
	}
}

object chocolatin{
	const pesoInicial = 10
	var peso = pesoInicial
	var gusto = "chocolate"
	var tieneGluten = true
	
	method precio() = pesoInicial * 0.50
	method gusto() = gusto
	method tieneGluten() = tieneGluten
	
	method darMordisco(){
		peso = peso - 2
	}
}

object golosinaBaniada{
	var peso
	var precio
	var gusto
	var tieneGluten
	
	method armarGolosina(golosinaBase){
		peso = golosinaBase.peso() + 4
		precio = golosinaBase.precio() + 2
		gusto = golosinaBase.gusto()
		tieneGluten = golosinaBase.tieneGluten()
	}
	
	method peso() = peso
	method precio() = precio
	method gusto() = gusto
	method tieneGluten() = tieneGluten
}

object pastillaTuttiFrutti{
	var peso = 5
	var precio
	var tieneGluten = true
	var gusto = "frutilla"
	
	method cambiarGluten(){
		tieneGluten = not tieneGluten
	}
	
	method precio(){
		return if(tieneGluten){precio = 10}else{precio = 7}
	}
	
	method darMordisco(){
		if(gusto == "frutilla"){
			gusto = "chocolate"
		} else if(gusto == "chocolate"){
			gusto = "naranja"
		} else {
			gusto = "frutilla"
		}
	}
}












