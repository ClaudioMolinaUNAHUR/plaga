import elementos.*
class Barrio{
	var property elementos
	method elemento(elementosAAgregar) = elementos.add(elementosAAgregar)
	method esCopado(){
		return elementos.count({cant =>cant.esBueno()}) > elementos.size()/2 
	}	
}