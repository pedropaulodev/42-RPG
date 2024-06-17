//
//  Combate1.swift
//  RPG
//
//  Created by JOSE ELIAS GOMES CAMARGO on 16/05/24.
//

import Foundation

public class Combate2 {
    var velocidadeTexto: useconds_t
    let respostasCorretas : [Int : String]
    
    
    init(velocidadeTexto: useconds_t) {
        self.velocidadeTexto = velocidadeTexto
        self.respostasCorretas =
        [1 : "Desconectar o computador da rede",
         2 : "Deletar o programa que infectou o computador",
         3 : "Examinar seus arquivos",
         4 : "Executar seu antivírus"]
    }
    
    //MARK: 1º fase.
    func iniciar() {
        
        var tentativas: Int
        
        repeat{
            tentativas = 2
            let respostasErradas1 = ["Reiniciar o Computador", "Desinstalar o software antivírus por pensar que está causando o problema"]
            
            var alternativasFase1: [String] = []
            
            
            
            alternativasFase1.removeAll()
            
            for i in 0..<respostasErradas1.count {
                alternativasFase1.append("\(respostasErradas1[i])")
            }
            
            alternativasFase1.append(respostasCorretas[1]!)
            alternativasFase1.shuffle()
            
            limparTerminal()
            
            slowPrint(text: "[ COMBATE 2 ]\n\n".yellow() + "Ao terminar de construir o programa de BAXTER, Luís percebe que acessando um dos sites de seus estudos e baixando um programa da internet um vírus se instalou em sua máquina e interrompeu a execução do programa do BAXTER, e agora está apagando todos os arquivos de seu computador desenfreadamente, se ele não parar o vírus seu computador vai estragar " + "permanentemente, perdendo todo o trabalho que havia feito até ali.".red2(), velocidade: velocidadeTexto)
            limparTerminal()
            slowPrint(text: "COMBATE 2:".yellow2() + " Impeça o vírus de apagar os códigos do projeto de BAXTER.".red2(), velocidade: velocidadeTexto)
            limparTerminal()

            slowPrint(text: "[ COMBATE 2 - FASE 1 ]\n\n".yellow() + "O vírus apagou todos os jogos de seu computador!".red2() + " Luiz não tem tempo para se desesperar, ele precisa tomar uma atitude imediatamente!", velocidade: velocidadeTexto)
            
            
            resposta = menuOpcoes(opcoes: alternativasFase1, pergunta: "Escolha a melhor opcão: ")
            
            if (alternativasFase1[resposta - 1] == respostasCorretas[1]) {
                slowPrint(text: "\nVocê fez uma boa escolha!, mantenha a calma!".green2(), velocidade: velocidadeTexto)
            } else {
                tentativas -= 1
                slowPrint(text: "\nVocê não fez uma escolha muito sensata, pense com mais calma!".red2(), velocidade: velocidadeTexto)
            }
        
            
            
            //MARK: 2º fase.
            let respostasErradas2 = ["Pesquisar na internet como parar o vírus", "Ignorar o problema e continuar usando o computador normalmente"]
            
            var alternativasFase2: [String] = []
            
            
            alternativasFase2.removeAll()
            
            for i in 0..<respostasErradas2.count {
                alternativasFase2.append("\(respostasErradas2[i])")
            }
            
            alternativasFase2.append(respostasCorretas[2]!)
            alternativasFase2.shuffle()
            
            limparTerminal()
            slowPrint(text: "[ COMBATE 2 - FASE 2 ]\n\n".yellow() + "Ótimo, sem acesso à internet o invasor não tem mais acesso ao seu computador...\n\n" + "Mas o vírus continua apagando seus arquivos e agora apaga todas as suas fotos e vídeos".red2(), velocidade: velocidadeTexto)
            
            resposta = menuOpcoes(opcoes: alternativasFase2, pergunta: "O que fazer agora?")
            
            
            if (alternativasFase2[resposta - 1] == respostasCorretas[2]) {
                slowPrint(text: "\nVocê fez uma boa escolha!, mantenha a calma!".green2(), velocidade: velocidadeTexto)
            } else {
                tentativas -= 1
                slowPrint(text: "\nVocê não fez uma escolha muito sensata, pense com mais calma!".red2(), velocidade: velocidadeTexto)
                
                slowPrint(text: "\nTentativas Restantes: \(tentativas)", velocidade: velocidadeTexto)
                
                if (tentativas == 0) {
                    slowPrint(text: "\nVocê Perdeu o Combate e o Vírus deletou o projeto de BAXTER. Tente Novamente.".red2(), velocidade: velocidadeTexto)
                    continue
                }
                
            }
            
            //MARK: 3º fase.
            let respostasErradas3 = ["Abrir o prompt de comando digitar o comando clear", "Baixar um programa qualquer da internet para limpar o computador"]
            
            var alternativasFase3: [String] = []
            
            
            alternativasFase3.removeAll()
            
            for i in 0..<respostasErradas3.count {
                alternativasFase3.append("\(respostasErradas3[i])")
            }
            
            alternativasFase3.append(respostasCorretas[3]!)
            alternativasFase3.shuffle()
            
            limparTerminal()
            slowPrint(text: "[ COMBATE 2 - FASE 3 ]\n\n".yellow() + "Isso, agora que retiramos a fonte dos problemas qual é o próximo passo para fazer com que os arquivos parem de ser deletados?\n\n" + "O vírus apaga seus utilitários.".red2(), velocidade: velocidadeTexto)
            
            resposta = menuOpcoes(opcoes: alternativasFase3, pergunta: "O que fazer agora?")
            
            
            if (alternativasFase3[resposta - 1] == respostasCorretas[3]) {
                slowPrint(text: "\nVocê fez uma boa escolha!, mantenha a calma!".green2(), velocidade: velocidadeTexto)
            } else {
                tentativas -= 1
                slowPrint(text: "\n Você não fez uma escolha muito sensata, pense com mais calma!".red2(), velocidade: velocidadeTexto)
                
                slowPrint(text: "\nTentativas Restantes: \(tentativas)", velocidade: velocidadeTexto)
                
                if (tentativas == 0) {
                    slowPrint(text: "\nVocê Perdeu o Combate e o Vírus deletou o projeto de BAXTER. Tente Novamente.".red2(), velocidade: velocidadeTexto)
                    continue
                }
            }
            
    
            
            //MARK: 4º fase.
            let respostasErradas4 = ["Chamar o \"primo dos compiuter\" para te ajudar", "Enviar dinheiro para um site que promete uma solução rápida para o problema."]
            
            var alternativasFase4: [String] = []
            
            
            alternativasFase4.removeAll()
            
            for i in 0..<respostasErradas4.count {
                alternativasFase4.append("\(respostasErradas3[i])")
            }
            
            alternativasFase4.append(respostasCorretas[4]!)
            alternativasFase4.shuffle()
            
            limparTerminal()
            slowPrint(text: "[ COMBATE 2 - FASE 4 ]\n\n".yellow() + "Agora que examinamos os arquivos e percebemos qual foi o tamanho do estrago e quantos arquivos foram infectados, podemos passar para a próxima fase...\n\n" + "O vírus apaga seus antigos projetos de programação.".red2(), velocidade: velocidadeTexto)
            
            resposta = menuOpcoes(opcoes: alternativasFase4, pergunta: "O que fazer agora?")
            
            
            if (alternativasFase4[resposta - 1] == respostasCorretas[4]) {
                slowPrint(text: "\nVocê venceu o combate e impediu o vírus de apagar o projeto de BAXTER!".green2(), velocidade: velocidadeTexto)
            } else {
                tentativas -= 1
                slowPrint(text: "\nVocê não fez uma escolha muito sensata, pense com mais calma!".red2(), velocidade: velocidadeTexto)
                
                slowPrint(text: "\nTentativas Restantes: \(tentativas)", velocidade: velocidadeTexto)
                
                if (tentativas == 0) {
                    slowPrint(text: "\nVocê Perdeu o Combate e o Vírus deletou o projeto de BAXTER. Tente Novamente.".red2(), velocidade: velocidadeTexto)
                    continue
                }
            }
 
            break
                
            
        } while(true)
        
        
    }
}



