
object olivia {
	var gradoDeConcentracion = 6
	
	method recibirMasajes() {
		return gradoDeConcentracion += 3
	}
	
	method discutir() {
		gradoDeConcentracion -= 1
	}
	
	method gradoDeConcentracion() {
		gradoDeConcentracion
	}
	
	method darseUnBanioDeVapor() {}
}


object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() { return esFeliz }
	method tieneSed() { return tieneSed }
	method peso() { return peso }
	
	method recibirMasajes() { esFeliz = true }
	method darseUnBanioDeVapor() { peso -= 500 ; tieneSed = true }
	method tomarAgua() { tieneSed = false }
	method comerFideos() { peso += 250; tieneSed = true }
	method correr() { peso -= 300 }
	method verElNoticiero() { esFeliz = false }
	
	method estaPerfecto() { return self.esFeliz() and not self.tieneSed() and self.peso().between(50000, 70000) }
	method mediodiaEnCasa() { 
		self.comerFideos()
		self.tomarAgua()
		self.verElNoticiero()
	}
}

object ramiro {
	var contractura = 0
	var grasaPiel = false
	
	method recibirMasajes() { 
		if (contractura<2) {
			contractura=0
		}
		else {
			contractura-=2
		}
	}
	
	method darseUnBanioDeVapor() { grasaPiel = false }
	method comerseUnBigMac() { grasaPiel = true }
	method jugarAlPaddle() { contractura += 3 }
	method bajarALaFosa() {
		grasaPiel = true
		contractura+=1
	}
		
	method diaDeTrabajo() { 
		self.bajarALaFosa()
		self.comerseUnBigMac()
		self.bajarALaFosa()
	}
}






