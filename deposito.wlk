import bici.*
class Deposito {
    const bicis

    method bicisRapidas() = bicis.filter({b => b.velocidad() > 25})
    method bicisPormarca() = bicis.map({b => b.marca()}).asSet()
    method esNocturno() = bicis.all({b => b.tieneLuz()})
}