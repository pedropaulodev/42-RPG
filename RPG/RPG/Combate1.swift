//
//  Combate1.swift
//  RPG
//
//  Created by JOSE ELIAS GOMES CAMARGO on 16/05/24.
//

import Foundation

public class Combate1 {
    var velocidadeTexto: useconds_t
    let respostasCorretas : [Int : String]
    
    init(velocidadeTexto: useconds_t) {
        self.velocidadeTexto = velocidadeTexto
        self.respostasCorretas =
        [1 : "Explicar ao pai por que a tecnologia uniu os dois",
         2 : "Explicar sobre o projeto em conjunto",
         3 : "Explicar que entende os sentimentos do pai",
         4 : "Perguntar ao Pai como ele se sente"]
    }
    
    func fase1() {
        let respostasErradas1 = ["Gritar com o pai e dizer que ele não entende nada", "Ouvir o conselho e desistir da ideia"]
        
        var alternativasFase1: [String] = []
        
        
        repeat {
            alternativasFase1.removeAll()
            
            for i in 0..<respostasErradas1.count {
                alternativasFase1.append("\(respostasErradas1[i])")
            }
            
            alternativasFase1.append(respostasCorretas[1]!)
            alternativasFase1.shuffle()
            
            slowPrint(text: "[ COMBATE 1 - FASE 1 ]\n\n".yellow() + "Quando Luís mostra a seu pai a carta de sua mãe, o pai fica revoltado, e diz para o filho esquecer de ir atrás disso, pois sua mãe havia ficado doente justamente por ser viciada no trabalho e passar horas intermináveis na frente do computador. " + "Convença Jaime a deixar você ir atrás de investigar o que essa carta quer dizer...".yellow2(), velocidade: velocidadeTexto)
            
            slowPrint(text: "\nA sua mãe enlouqueceu com isso...".yellow(), velocidade: velocidadeTexto)
            
            resposta = menuOpcoes(opcoes: alternativasFase1, pergunta: "O que fazer agora?")
            
            if (alternativasFase1[resposta - 1] == respostasCorretas[1]) {
                break
            } else if (alternativasFase1[resposta - 1] == "Gritar com o pai e dizer que ele não entende nada") {
                
                slowPrint(text: "NÃO FALE ASSIM DELA! É VOCÊ QUEM NÃO ENTENDE NADA!".cyan2(), velocidade: velocidadeTexto)
                
                slowPrint(text: "\nAh...claro...mas eu entendo de correio eletrônico e vou apagar esse e-mail.".yellow(), velocidade: velocidadeTexto)
            } else {
                slowPrint(text: "\nÉ...talvez seja melhor eu desistir mesmo...".cyan2(), velocidade: velocidadeTexto)
            }


            slowPrint(text: "Sua persuasão foi baixa e você não conseguiu convencer o seu pai a te permitir continuar a jornada.".red2(), velocidade: velocidadeTexto)
          
            resposta = menuOpcoes(opcoes: ["Sim", "Sair do Jogo"], pergunta: "Jogar novamente?")
            if (resposta == 2) {
                slowPrint(text: "Fim de jogo.", velocidade: velocidadeTexto)
                exit(0)
            }
        } while(true)
    }
    
    func fase2() {
        let respostasErradas2 = ["Perguntar ao pai se ele já entendeu os seus sentimentos"]
        
        var alternativasFase2: [String] = []
        
       
        
        repeat {
            
            alternativasFase2.removeAll()
            
            for i in 0..<respostasErradas2.count {
                alternativasFase2.append("\(respostasErradas2[i])")
            }
            
            alternativasFase2.append(respostasCorretas[2]!)
            alternativasFase2.shuffle()
            
            slowPrint(text: "[ COMBATE 1 - FASE 2 ]\n\n".yellow() + "Pai, eu sempre admirei a mamãe pela sua inteligência e capacidade de resolver problemas com tecnologia, para mim este era o superpoder dela. Eu sei que ela trabalhava demais, porém ela conseguiu ajudar muitas pessoas com as invenções dela.".cyan2(), velocidade: velocidadeTexto)
            
            slowPrint(text: "\nÉ...ela ajudou tanta gente e acabou esquecendo de se ajudar...".yellow(), velocidade: velocidadeTexto)
            
            resposta = menuOpcoes(opcoes: alternativasFase2, pergunta: "O que fazer agora?")
            
            if (alternativasFase2[resposta - 1] == respostasCorretas[2]) {
                break
            }
            
            slowPrint(text: "Você já parou pra pensar nos MEUS sentimentos? Pra mim isso é importante...".cyan2(), velocidade: velocidadeTexto)
            
            slowPrint(text: "Pouco importa...estou tentando te proteger, você não pode continuar.".yellow(), velocidade: velocidadeTexto)
            
            slowPrint(text: "\nSua persuasão foi baixa e você não conseguiu convencer o seu pai a te permitir continuar a jornada.".red2(), velocidade: velocidadeTexto)
          
            resposta = menuOpcoes(opcoes: ["Sim", "Sair do Jogo"], pergunta: "Jogar novamente?")
            if (resposta == 2) {
                slowPrint(text: "Fim de jogo.", velocidade: velocidadeTexto)
                exit(0)
            }
        } while(true)
    }
    
    func fase3() {
        let respostasErradas3 = ["Pedir ao pai permissão para ir atrás das cartas"]
        
        var alternativasFase3: [String] = []
        
      
        repeat {
            alternativasFase3.removeAll()
            
            for i in 0..<respostasErradas3.count {
                alternativasFase3.append("\(respostasErradas3[i])")
            }
            
            alternativasFase3.append(respostasCorretas[3]!)
            alternativasFase3.shuffle()
            
            slowPrint(text: "[ COMBATE 1 - FASE 3 ]\n\n".yellow() + "Quando eu era pequeno, a mamãe sempre lia um livro chamado 'O Guia do Mochileiro das Galáxias', onde havia uma máquina que respondia qualquer pergunta. Eu e a mamãe começamos a desenvolvê-la como uma brincadeira e uma forma de passarmos mais tempo juntos, o que acabou também me ensinando a programar.".cyan2(), velocidade: velocidadeTexto)
            
            slowPrint(text: "\nHum...isso é interessante".yellow2(), velocidade: velocidadeTexto)
            
            
            resposta = menuOpcoes(opcoes: alternativasFase3, pergunta: "O que fazer agora?")
            
            if (alternativasFase3[resposta - 1] == respostasCorretas[3]) {
                break
            }
            
            slowPrint(text: "Posso ir atrás dessa carta?".cyan2(), velocidade: velocidadeTexto)
            
            slowPrint(text: "\nNão, claro que não, ainda não achei um motivo válido pra você fazer isso.".yellow(), velocidade: velocidadeTexto)
            
            slowPrint(text: "\nSua persuasão foi baixa e você não conseguiu convencer o seu pai a te permitir continuar a jornada.".red2(), velocidade: velocidadeTexto)
          
            resposta = menuOpcoes(opcoes: ["Sim", "Sair do Jogo"], pergunta: "Jogar novamente?")
            if (resposta == 2) {
                slowPrint(text: "Fim de jogo.", velocidade: velocidadeTexto)
                exit(0)
            }
        } while(true)
    }

    func fase4() {
        let respostasErradas4 = ["Subentender que o pai já entendeu e ir atrás da carta"]
        
        var alternativasFase4: [String] = []
        
        repeat {
            alternativasFase4.removeAll()
            
            for i in 0..<respostasErradas4.count {
                alternativasFase4.append("\(respostasErradas4[i])")
            }
            
            alternativasFase4.append(respostasCorretas[4]!)
            alternativasFase4.shuffle()
            
            slowPrint(text: "[ COMBATE 1 - FASE 4 ]\n\n".yellow() + "Eu entendo seus sentimentos. Eu também queria ter passado mais tempo com a mamãe, mas sei que ela precisava trabalhar, pois havia pessoas que dependiam dela. Eu sei que foi a mamãe que enviou o e-mail e quero terminar esse projeto justamente para me tornar um desenvolvedor igual a ela e poder ajudar muitas pessoas".cyan2(), velocidade: velocidadeTexto)
            
            slowPrint(text: "\nObrigado filho...obrigado".yellow2(), velocidade: velocidadeTexto)
            
            
            resposta = menuOpcoes(opcoes: alternativasFase4, pergunta: "O que fazer agora?")
            
            if (alternativasFase4[resposta - 1] == respostasCorretas[4]) {
                break
            }
            
            slowPrint(text: "Bom...já vou indo".cyan2(), velocidade: velocidadeTexto)
            
            slowPrint(text: "Onde você pensa que vai? Você não vai sair de casa.".yellow(), velocidade: velocidadeTexto)
            
            slowPrint(text: "\nSua persuasão foi baixa e você não conseguiu convencer o seu pai a te permitir continuar a jornada.".red2(), velocidade: velocidadeTexto)
          
            resposta = menuOpcoes(opcoes: ["Sim", "Sair do Jogo"], pergunta: "Jogar novamente?")
            if (resposta == 2) {
                slowPrint(text: "Fim de jogo.", velocidade: velocidadeTexto)
                exit(0)
            }
        } while(true)
    }


        
        
        
    }

