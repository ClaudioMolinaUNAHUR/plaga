import plagas.*

class Hogar{
	var property nivelDeMugre
	var property confort
	method esBueno(){
		return nivelDeMugre <= confort/2
	}
	method producirEfectoDePlaga(plaga){
		nivelDeMugre += plaga.nivelDeDanio()
		plaga.crecer()
	}
}

class Huerta{
	var property capacidadDeProduccion
	method esBueno(){
		return capacidadDeProduccion > nivelDeProduccion.nivel()
	}
	method producirEfectoDePlaga(plaga){
		if (plaga.transmiteEnfermedad()){
			capacidadDeProduccion -= (plaga.nivelDeDanio()*0.1 - 10).max(0)
		}else{
			capacidadDeProduccion -= (plaga.nivelDeDanio()*0.1).max(0)
		}
		plaga.crecer()
	}
}

object nivelDeProduccion{
	var property nivel
}

class Mascota{
	var property nivelSalud
	method esBueno(){
		return nivelSalud >= 250
	}
	method producirEfectoDePlaga(plaga){
		if(plaga.transmiteEnfermedad()){
			nivelSalud -= plaga.nivelDeDanio().max(0)
			plaga.crecer()
		}
	}
}

