//
//  Protagonista.swift
//  RPG
//
//  Created by JOSE ELIAS GOMES CAMARGO on 14/05/24.
//

public class Protagonista {
    
    var nome: String
    var conhecimento: Int
    var reflexoes: Int
    var conceitosAprendidos: [String]
    var capitulosDesbloqueados : [String]
    var inventario: Inventario
    
    init() {
        self.nome = "Luís"
        self.conhecimento = 0
        self.reflexoes = 0
        self.inventario = Inventario()
        self.capitulosDesbloqueados = []
        self.conceitosAprendidos = []
    }
    
    func aprender (novoAprendizado: String) {
        conceitosAprendidos.append(novoAprendizado)
    }
    
    func desbloquearCapitulo (novoCapitulo: String) {
        capitulosDesbloqueados.append(novoCapitulo)
    }
    
}
