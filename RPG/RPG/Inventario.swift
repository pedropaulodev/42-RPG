//
//  Inventario.swift
//  rpg-42
//
//  Created by PEDRO PAULO DA SILVA on 15/05/24.
//

import Foundation

import Foundation

public class Inventario{
    //1.MARK: colecao de itens
    var itens : [Item] = []
    
    
    //3.MARK: - exibe descricao do item
    func exibirDescricaoDoItem(opcao: Int){
        if (opcao <= itens.count && opcao >= 0) {
            print(itens[opcao - 1].description)
        }
    }
    
    //4.MARK: - Adiciona item na lista de itens
    func adicionarItem(itemAdicionado:Item){
        
        let indiceBusca = buscarItemPorNome(itemBuscado: itemAdicionado.nome)
        
        if (indiceBusca == -1) {
            itens.append(itemAdicionado)
        } else {
            itens[indiceBusca].quantidade += 1
        }
        
        
       
    }
        
    //5.MARK: Usa o item
    func usarItem(itemUsado:Int) {
        if (itens[itemUsado].quantidade) > 1{
            itens[itemUsado].quantidade -= 1
        }else{
            itens.remove(at: itemUsado)
        }
        
    }
    
    // MARK: VERIFICA SE UM ITEM JÁ ESTÁ NO INVENTÁRIO
    func buscarItemPorNome(itemBuscado: String) -> Int {
        for i in 0..<itens.count {
            if (itemBuscado == itens[i].nome) {
                return i
            }
        }
        return -1
    }
    
}
