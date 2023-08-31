
object galvan {
	var property sueldo = 150000
	var deuda = 0
	var dinero = 0
	
	method sueldo() = sueldo
	method cobrarSueldo() {
		dinero += sueldo
		self.pagarDeuda()
	}
	
	method totalDeuda() = deuda
	
	method pagarDeuda() {
		var aux = dinero
		/*
		 *  dinero = 0.max(dinero-deuda)
		 * 
		 */
		dinero -= self.totalDeuda().min(dinero)
		deuda -= aux.min(deuda)
		
		/*
		if(ingreso > deuda){ 
			dinero -= deuda
			deuda = 0
		}	
		else{
			deuda -= dinero
			dinero = 0
		}
	
	* */
	}
	method totalDinero() = dinero
	
	method gastar(cuanto){
		deuda += (-1)* 0.min(dinero-cuanto)
		dinero -= dinero.min(cuanto)
	}
}