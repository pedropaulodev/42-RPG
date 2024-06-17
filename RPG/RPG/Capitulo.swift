//
//  Capitulo.swift
//  RPG
//
//  Created by JOSE ELIAS GOMES CAMARGO on 14/05/24.
//

import Foundation

public class Capitulo {
    var carta: Item
    var isCapituloConcluido = false
    var velocidadeTexto: useconds_t
    var inventario: Inventario
    var pontosConhecimento = 100
    
    init(carta: Item, velocidadeTexto: useconds_t, inventario: Inventario) {
        self.carta = carta
        self.isCapituloConcluido = false
        self.velocidadeTexto = velocidadeTexto
        self.inventario = inventario
        self.pontosConhecimento = 100
    }
    
    func desafio1() {}
    
    func desafio2() {}
    
    func desafio3() {}
    
    func desafio4() {}
}
