class Plaga{
	var property poblacion
	method transmiteEnfermedad(){
		return poblacion >= 10
	}
	method crecer(){
		poblacion *= 0.1
	}
}

class Cucarachas inherits Plaga{
	var pesoPromedio
	method nivelDeDanio() = poblacion/2
	override method transmiteEnfermedad() = super() and pesoPromedio >= 10
	override method crecer(){
		super()
		pesoPromedio += 2
	}
}
 class Pulga inherits Plaga{
 	method nivelDeDanio() = poblacion*2
 }
 
 class Garrapata inherits Pulga{
 	override method crecer(){
		poblacion *= 0.2
	}
 }
 
 class Mosquito inherits Plaga{
 	method nivelDeDanio() = poblacion
 	override method transmiteEnfermedad() = super() and poblacion%3 == 0
 	
 }