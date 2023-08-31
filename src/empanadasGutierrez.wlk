object gimenez {
	var property dinero = 3000000
	
	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}


object galvan {
	var property sueldo = 150000
	var deuda = 0
	var dinero = 0
	
	method sueldo() = sueldo
	
	method cobrarSueldo() {
		dinero += 0.max(sueldo-deuda)
		deuda = 0.max(deuda-sueldo)
	}
	
	method totalDeuda() = deuda
	
	method totalDinero() = dinero
	
	method gastar(cuanto){
		deuda += (-1)* 0.min(dinero-cuanto)
		dinero -= dinero.min(cuanto)
	}
}


object baigorria {

	const montoPorEmpanadas = 150
	var empanadasVendidas = 0
	var totalCobrado = 0
	
	method sueldo() = empanadasVendidas * montoPorEmpanadas
	
	method empanadasVendidas() = empanadasVendidas
 	method venderEmpanadas(cantidad) {
		empanadasVendidas += cantidad
	}
	
	method cobrarSueldo() {
		totalCobrado += self.sueldo()
		empanadasVendidas = 0
	}
	
	method totalCobrado(){
		return totalCobrado
	}
}

