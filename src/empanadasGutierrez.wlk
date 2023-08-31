object gimenez {
	var property dinero = 3000000
	
	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo(empleado.sueldo())
	}
}

object galvan {
	var sueldo = 150000
	var deuda = 0
	var dinero = 0
	
	method sueldo() = sueldo
	method cobrarSueldo(sueldoActual) {
		sueldo = sueldoActual
		dinero += sueldo
		self.pagarDeuda(dinero)
	}
	
	method totalDeuda() = deuda
	
	method pagarDeuda(ingreso) {
		if(ingreso > deuda){ 
			dinero -= deuda
			deuda = 0
		}	
		else{
			
			deuda -= dinero
			dinero = 0
		}
	}
	method totalDinero() = dinero
	method gastar(cuanto){
		deuda += (-1)* 0.min(dinero-cuanto)
		dinero -= dinero.min(cuanto)
	}
}

object baigorria {
	var sueldo = 0
	var property empanadasVendidas = 0
	var totalCobrado = 0
	
	method sueldo() = empanadasVendidas*150

	method cobrarSueldo(sueldoActual) {
		sueldo = sueldoActual
		totalCobrado += sueldo
	}
	method totalCobrado(){
		return totalCobrado
	}
}

