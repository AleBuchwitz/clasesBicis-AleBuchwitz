class Bici {
  const rodado
  const largo
  const marca
  const accesorios

  method altura() = rodado * 2.5 + 15
  method velocidad() = if(largo > 120) rodado + 6 else rodado + 2
  method marca() = marca
  method cantAccesoriosLivianos() = accesorios.count({a => a.peso() < 1})
  method carga() = accesorios.sum({a => a.carga()})
  method peso() = rodado / 2 + accesorios.sum({a => a.peso()})
  method tieneLuz() = accesorios.any({a => a.esLuminoso()})
}
object farolito {
  method peso() = 0.5
  method carga() = 0
  method esLuminoso() = true
}
class Canasto {
    const volumen

    method peso() = volumen / 10
    method carga() = volumen * 2
    method esLuminoso() = false 
}
class Morral {
    const largo
    const tieneOjoDeGato

    method peso() = 1.2
    method carga() = largo / 3
    method esLuminoso() = tieneOjoDeGato
}