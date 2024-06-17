//
//  Item.swift
//  rpg-42
//
//  Created by PEDRO PAULO DA SILVA on 14/05/24.
//

import Foundation

public class Item{
    
    var nome : String
    var descricao : String
    var quantidade : Int
    var isItemUtilizavel : Bool
    
    init(nome : String, descricao : String, quantidade : Int, isItemUtilizavel : Bool){
        self.nome = nome
        self.descricao = descricao
        self.quantidade = quantidade
        self.isItemUtilizavel = isItemUtilizavel
    }
    
    var description : String {
        get{return "Nome: \(nome)\n\nQuantidade: \(quantidade)\n\nDescrição:\n\n\(descricao)"}
    }
}






