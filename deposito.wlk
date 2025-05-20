import bici.*
class Deposito {
    const bicis

    method bicisRapidas() = bicis.filter({b => b.velocidad() > 25})
    method bicisPormarca() = bicis.map({b => b.marca()}).asSet()
    method esNocturno() = bicis.all({b => b.tieneLuz()})
    method tieneBicisParaLlevar(kg) = bicis.any({b => b.carga() > kg})
    method marcaDeLaBiciMasRapida() = bicis.max({b => b.velocidad()}).marca()
    method cargaTotalDeBicislargas() = bicis.filter({b => b.largo() > 170}).sum({b => b.carga()})
    method cantBicisSinAccesorios() = bicis.count({b => b.cantAccesorios() == 0})
}