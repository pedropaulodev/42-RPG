import Foundation

public class Maquina {
    var isMaquinaCompleta = false
    var temCapacidadeAnalitica : Bool
    var temLogicaDeProgramacao : Bool
    var temPOO: Bool
    var velocidadeTexto: useconds_t
    
    
    init(velocidadeTexto: useconds_t) {
        self.isMaquinaCompleta = false
        self.temLogicaDeProgramacao = false
        self.temCapacidadeAnalitica = false
        self.temPOO = false
        self.velocidadeTexto = velocidadeTexto
    }
    
    func construirParte1(aprendizados: Int)  {
        if(aprendizados < 1) {
            slowPrint(text: "Você não possui a habilidade de Capacidade Analítica (desbloqueada no Capítulo 1).".red2(), velocidade: velocidadeTexto)
        } else if (aprendizados > 0 && temCapacidadeAnalitica == false) {
            temCapacidadeAnalitica = true
            slowPrint(text: "Parte 1 de BAXTER construída!".green2(), velocidade: velocidadeTexto)
        } else {
            slowPrint(text: "Parte 1 de BAXTER já foi construída!".green2(), velocidade: velocidadeTexto)
        }
    }
    
    func construirParte2(aprendizados: Int)  {
        if(aprendizados < 2) {
            slowPrint(text: "Você não possui a habilidade de Lógica de Programação (desbloqueada no Capítulo 2).".red2(), velocidade: velocidadeTexto)
        } else if (temCapacidadeAnalitica == false){
            slowPrint(text: "Para continuar ocê deve construir primeiro a parte 1 de BAXTER!".red2(), velocidade: velocidadeTexto)

        } else if (aprendizados > 1 && temLogicaDeProgramacao == false) {
            temLogicaDeProgramacao = true
            slowPrint(text: "Parte 2 de BAXTER construída!".green2(), velocidade: velocidadeTexto)
        } else {
            slowPrint(text: "Parte 2 de BAXTER já foi construída!".green2(), velocidade: velocidadeTexto)
        }
    }
    
    func construirParte3(aprendizados: Int) -> Bool {
        if(aprendizados < 3) {
            slowPrint(text: "Você não possui a habilidade de Programação Orientada a Objetos (desbloqueada no Capítulo 3).".red2(), velocidade: velocidadeTexto)
        }
        
        if (temCapacidadeAnalitica == false) {
            slowPrint(text: "Para continuar você deve construir primeiro a parte 1 de BAXTER!".red2(), velocidade: velocidadeTexto)
        } 
        
        if (temLogicaDeProgramacao == false) {
            slowPrint(text: "Para continuar você deve construir primeiro a parte 2 de BAXTER!".red2(), velocidade: velocidadeTexto)
        }
        
        
        else if (aprendizados > 2 && temPOO == false) {
            temPOO = true
            slowPrint(text: "Parte 3 de BAXTER construída!".green2(), velocidade: velocidadeTexto)
            return true
        } else {
            slowPrint(text: "Parte 3 de BAXTER já foi construída!".green2(), velocidade: velocidadeTexto)
        }
        return false
    }
    
}
