//
//  Capitulo1.swift
//  RPG
//
//  Created by JOSE ELIAS GOMES CAMARGO on 14/05/24.
//

import Foundation

public class Capitulo3 : Capitulo {
    let respostasCorretas : [Int : String]
    
    init(inventario: Inventario, velocidadeTexto: useconds_t) {
        
        // MARK: ADICIONANDO UM DICIONÁRIO DE RESPOSTAS CORRETAS A CADA DESAFIO
        
        self.respostasCorretas =
        [1 : "Classe",
         2 : "Métodos",
         3 : "Carro()",
         4 : "Gato:Animal"]
        
        super.init(carta: Item(nome: "Carta 4", descricao: "[ CARTA 4 ]\n\n".yellow2() + "\"Minha querida Tulipa...espero que ela ainda esteja saudável, lembra quando plantamos ela juntos? Você ainda era só uma criança, e hoje já é um homem...como o tempo passa tão depressa...\n\nProgramação Orientada a Objetos! Espero que tenha aprendido um pouquinho, você pode estudar mais sobre isso e continuar construindo a máquina, acho que a esse ponto você já está perto de terminá-la, não desanime!\n\nEu queria ter todo o tempo do mundo com você, mas a vida é assim, de idas e vindas, e essa é a pergunta que deixo pra você refletir no seu tempo, " + "Qual é o significado da vida?".yellow2(), quantidade: 1, isItemUtilizavel: false), velocidadeTexto: velocidadeTexto, inventario: inventario)
    }
    
    //MARK: DESAFIO 1
    override func desafio1() {
        var respostasErradas1 = ["Herança", "Variável", "Agrupação"]
        
        var alternativasDesafio1: [String] = []
        let itensUtilizaveis = Inventario()

        
        slowPrint(text: "Essa é facil!  minha mãe sempre fazia essa charada, é obvio que é a chuva.".cyan2(), velocidade: velocidadeTexto)
        limparTerminal()
        
        slowPrint(text: "Mas a chuva cai em todo lugar, onde será que minha mãe colocou esse próximo QR Code?".cyan2(), velocidade: velocidadeTexto)
        limparTerminal()
        
        slowPrint(text: "Hmm...minha mãe adorava sair para tomar chuva no quintal de casa quando quando havia sol ao mesmo tempo. lembro que ela dizia que esse tipo de clima era favorável para achar um arco-íris no céu.".cyan2(), velocidade: velocidadeTexto)
        limparTerminal()
        
        slowPrint(text: "Provavelmente este QR Code vai estar no nosso quintal, vou ate lá procurar...".cyan2(), velocidade: velocidadeTexto)
        limparTerminal()
        
        slowPrint(text: "Eu sabia que você colocaria embaixo do seu vaso de flores preferido!".cyan2(), velocidade: velocidadeTexto)
        limparTerminal()
        
        slowPrint(text: "[ QUESTIONÁRIO - PROGRAMAÇÃO ORIENTADA A OBJETOS ]\n\n".yellow2() + "QUESTIONÁRIO?? Bom...ainda bem que eu já tenho algumas noções de POO...", velocidade: velocidadeTexto)
        limparTerminal()
        
        repeat {
            //limpa alternativas para caso precise adicionar
            // novas opcoes ele esteja vazio
            alternativasDesafio1.removeAll()
            itensUtilizaveis.itens.removeAll()

            
            //adiciona as rep erradas
            for i in 0..<respostasErradas1.count {
                alternativasDesafio1.append("\(respostasErradas1[i])")
            }
            
            for item in protagonista.inventario.itens {
                if (item.isItemUtilizavel) {
                    itensUtilizaveis.itens.append(item)
                }
            }
            
            //adiciona uma rep certa
            alternativasDesafio1.append(respostasCorretas[1]!)
                        
            //embaralha
            alternativasDesafio1.shuffle()
            
            if (itensUtilizaveis.itens.count > 0 && alternativasDesafio1.count > 1) {
                alternativasDesafio1.append("Acessar Inventário")
            }
            
            
            // enunciado da pergunta
            print("[ DESAFIO 1 - PROGRAMAÇÃO ORIENTADA A OBJETOS EM SWIFT ]\n\n".yellow2() + "Leia o texto a seguir: \n\n" + "__________".red2() + " é um termo utilizado em Orientação a Objetos (OO) para abstrair um grupo de elementos com determinadas características em comum. Uma " + "__________".red2() + " pode ser considerada como uma base sobre a qual serão criados os objetos, com atributos e métodos, ou seja, ela descreve as características e comportamentos de um elemento.")
            
            var resposta = menuOpcoes(opcoes: alternativasDesafio1, pergunta: "Escolha a palavra que melhor se adequa à definição:")
            
            //MARK: SELECIONOU O INVENTARIO
            if(resposta == alternativasDesafio1.count && resposta != 1) {
                
                var opcoesInventario: [String] = []

                
                for item in itensUtilizaveis.itens {
                        opcoesInventario.append("\(item.nome) (\(item.quantidade)x)")
                }
                
                opcoesInventario.append("Voltar")
                
                print("[ INVENTÁRIO ]\n".yellow())

                resposta = menuOpcoes(opcoes: opcoesInventario, pergunta: "Selecione um item para usar: ")
                
                if(resposta == opcoesInventario.count) {
                    continue
                } else if (itensUtilizaveis.itens[resposta - 1].nome == "Debugger") {
                    slowPrint(text: "Você usou o debugger e pulou de fase! ".green2(), velocidade: velocidadeTexto)
                    
                    pontosConhecimento -= 25
                    
                    let indiceBusca = inventario.buscarItemPorNome(itemBuscado: itensUtilizaveis.itens[resposta - 1].nome)
                    
                    inventario.usarItem(itemUsado: indiceBusca)
                    
                    break
                } else {
                    if (respostasErradas1.count > 0) {
                        respostasErradas1.remove(at: Int.random(in: 0..<respostasErradas1.count))
                        
                        slowPrint(text: "Você usou um Café e removeu uma alternativa incorreta!".green2(), velocidade: velocidadeTexto)
                        
                        pontosConhecimento -= 10
                        
                        let indiceBusca = inventario.buscarItemPorNome(itemBuscado: itensUtilizaveis.itens[resposta - 1].nome)
                        
                        inventario.usarItem(itemUsado: indiceBusca)
                        limparTerminal()
                        continue
                    } else {
                        slowPrint(text: "Não há mais alternativas incorretas!".green2(), velocidade: velocidadeTexto)
                        continue
                    }
                }
            }
            
            
            if (alternativasDesafio1[resposta - 1] == respostasCorretas[1]) {
                break
            } else {
                slowPrint(text: "\n...não parece ser a resposta correta, tente novamente.".red2(), velocidade: velocidadeTexto)
                limparTerminal()
            }
            
        } while(true)
        
        slowPrint(text: "\nConcluiu o primeiro desafio! A resposta era " + "\"\(respostasCorretas[1]!)\"".green2(), velocidade: velocidadeTexto)
    }
    
    //MARK: DESAFIO 2
    override func desafio2() {
        var respostasErradas2 = ["Funções", "Hábitos", "Rotinas"]
        
        var alternativasDesafio2: [String] = []
        let itensUtilizaveis = Inventario()

        
        
        repeat {
            //limpa alternativas para caso precise adicionar
            // novas opcoes ele esteja vazio
            alternativasDesafio2.removeAll()
            itensUtilizaveis.itens.removeAll()

            
            //adiciona as rep erradas
            for i in 0..<respostasErradas2.count {
                alternativasDesafio2.append("\(respostasErradas2[i])")
            }
            
            for item in protagonista.inventario.itens {
                if (item.isItemUtilizavel) {
                    itensUtilizaveis.itens.append(item)
                }
            }
            
            //adiciona uma rep certa
            alternativasDesafio2.append(respostasCorretas[2]!)
                        
            //embaralha
            alternativasDesafio2.shuffle()
            
            if (itensUtilizaveis.itens.count > 0 && alternativasDesafio2.count > 1) {
                alternativasDesafio2.append("Acessar Inventário")
            }
            
            limparTerminal()
            print("[ DESAFIO 2 - PROGRAMAÇÃO ORIENTADA A OBJETOS EM SWIFT ]\n\n".yellow2() + "Qual nome se dá aos comportamentos e ações de uma classe que podem ser utilizados para manipulação de estados e atributos de uma classe e realizar interações com outros objetos?")
            
            var resposta = menuOpcoes(opcoes: alternativasDesafio2, pergunta: "Escolha a palavra que melhor se adequa à pergunta:")
            
            //MARK: SELECIONOU O INVENTARIO
            if(resposta == alternativasDesafio2.count && resposta != 1) {
                
                var opcoesInventario: [String] = []

                
                for item in itensUtilizaveis.itens {
                        opcoesInventario.append("\(item.nome) (\(item.quantidade)x)")
                }
                
                opcoesInventario.append("Voltar")
                
                print("[ INVENTÁRIO ]\n".yellow())

                resposta = menuOpcoes(opcoes: opcoesInventario, pergunta: "Selecione um item para usar: ")
                
                if(resposta == opcoesInventario.count) {
                    continue
                } else if (itensUtilizaveis.itens[resposta - 1].nome == "Debugger") {
                    slowPrint(text: "Você usou o debugger e pulou de fase! ".green2(), velocidade: velocidadeTexto)
                    
                    pontosConhecimento -= 25
                    
                    let indiceBusca = inventario.buscarItemPorNome(itemBuscado: itensUtilizaveis.itens[resposta - 1].nome)
                    
                    inventario.usarItem(itemUsado: indiceBusca)
                    
                    break
                } else {
                    if (respostasErradas2.count > 0) {
                        respostasErradas2.remove(at: Int.random(in: 0..<respostasErradas2.count))
                        
                        slowPrint(text: "Você usou um Café e removeu uma alternativa incorreta!".green2(), velocidade: velocidadeTexto)
                        
                        pontosConhecimento -= 10
                        
                        let indiceBusca = inventario.buscarItemPorNome(itemBuscado: itensUtilizaveis.itens[resposta - 1].nome)
                        
                        inventario.usarItem(itemUsado: indiceBusca)
                        limparTerminal()
                        continue
                    } else {
                        slowPrint(text: "Não há mais alternativas incorretas!".green2(), velocidade: velocidadeTexto)
                        continue
                    }
                }
            }
            
            
            
            if (alternativasDesafio2[resposta - 1] == respostasCorretas[2]) {
                break
            } else {
                slowPrint(text: "\n...não parece ser a resposta correta, tente novamente.".red2(), velocidade: velocidadeTexto)
                limparTerminal()
            }
            
        } while(true)
        
        slowPrint(text: "\nConcluiu o segundo desafio! A resposta era " + "\"\(respostasCorretas[2]!)\"".green2(), velocidade: velocidadeTexto)
        limparTerminal()
    }
    
    //MARK: DESAFIO 3
    override func desafio3() {
        repeat {
            print("[ DESAFIO 3 - PROGRAMAÇÃO ORIENTADA A OBJETOS EM SWIFT ]\n\n".yellow2() + "Analise o Código a Seguir:\n")
            
            print("  public class".magenta2() + " Carro ".cyan2() + "{\n" +
                  "      var".magenta2() + " marca".blue() + " : " + "String\n".magenta() +
                  "      var".magenta2() + " modelo".blue() + " : " + "String\n".magenta() +
                  "      var".magenta2() + " ano".blue() + " : " + "Int\n\n".magenta() +
                  
                  "      init".magenta2() + "() {\n" +
                  "          self".magenta2() + "." + "marca".cyan() + " = " + "\"Chevrolet\"\n".yellow() +
                  
                  "          self".magenta2() + "." + "modelo".cyan() + " = " + "\"Celta\"\n".yellow() +
                  "          self".magenta2() + "." + "ano".cyan() + " = " + "2010\n".yellow() + "      }\n" + "  }\n\n" + "  /* COMPLETE A LINHA INSTACIANDO UM OBJETO DA CLASSE CARRO\n  À VARIÁVEL carro */\n".black2() +  "  var".magenta2() + " carro".blue() + " = " + "_______\n".red2())
            
            
            print("\nDigite o trecho de código que completa o espaço em vermelho: ", terminator: "")
            let resposta = readLine()!
            
            if (resposta == respostasCorretas[3]) {
                break
            } else {
                slowPrint(text: "\n...não parece ser a resposta correta, tente novamente.".red2(), velocidade: velocidadeTexto)
                limparTerminal()
            }
        } while (true)
        limparTerminal()
        slowPrint(text: "Concluiu o terceiro desafio! A resposta era " + "\"\(respostasCorretas[3]!)\"".green2(), velocidade: velocidadeTexto)
        limparTerminal()
    }
    
    //MARK: DESAFIO 4
    override func desafio4() {
        repeat {
            print("[ DESAFIO 4 - PROGRAMAÇÃO ORIENTADA A OBJETOS EM SWIFT ]\n\n".yellow2() + "Analise o Código a Seguir:\n")
            
            print("  public class".magenta2() + " Animal ".cyan2() + "{\n" +
                  "      var".magenta2() + " nome".blue() + " : " + "String\n".magenta() +
                  "      var".magenta2() + " idade".blue() + " : " + "Int\n".magenta() +
                  "      var".magenta2() + " cor".blue() + " : " + "String\n\n".magenta() +
                  
                  "      init".magenta2() + "(" + "nome".blue() + ": " + "String".magenta() + ", " + "idade".blue() + ": " + "Int, ".magenta() + "cor".blue() + ": " + "String".magenta() + ") {\n" +
                  "          self".magenta2() + "." + "nome".cyan() + " = " + "nome\n" +
                  
                  "          self".magenta2() + "." + "idade".cyan() + " = " + "idade\n" +
                  "          self".magenta2() + "." + "cor".cyan() + " = " + "cor\n" + "      }\n" +
                  
                  "      func ".magenta2() + "emitirSom()".blue() + " {\n" +
                  "          print(" + "\"emite som de um animal\"".green2() + ")\n" + "      }\n" + "  }\n\n" +
                  "  /* TODO: COMPLETE A LINHA E CRIE UMA CLASSE\n  \"Gato\" QUE HERDE DE \"Animal\"*/\n".black2() + "  public class".magenta2() + " _____________ ".red2() + "{\n" +
                  "      override func ".magenta2() + "emitirSom() {\n" + "          print(" + "\"MIAAAAU\"".green2() + ")\n      }\n  }\n")
            
            
            print("\nDigite o trecho de código que completa o espaço em vermelho: ", terminator: "")
            var resposta = readLine()!
            resposta = resposta.replacingOccurrences(of: " ", with: "")
            
            if (resposta == respostasCorretas[4]!) {
                break
            } else {
                slowPrint(text: "\n...não parece ser a resposta correta, tente novamente.".red2(), velocidade: velocidadeTexto)
                limparTerminal()
            }
        } while (true)
        limparTerminal()
        slowPrint(text: "Concluiu o quarto desafio! A resposta era " + "Gato : Animal".green2(), velocidade: velocidadeTexto)
        limparTerminal()
    }
    
    
}

